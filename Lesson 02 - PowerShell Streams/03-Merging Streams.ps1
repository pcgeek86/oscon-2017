Clear-Host

# You can merge streams together using the redirection operators

# Define a ScriptBlock that writes to multiple streams.
# Merge the Verbose stream into the output stream
$ScriptBlock = {
  Write-Verbose -Message 'Testing123'
  Write-Debug -Message 'This is a debug message'
}

# Call the ScriptBlock
& $ScriptBlock -Verbose 4>&1

# QUESTION: Why didn't that work?

# PowerShell has standard functions and "advanced functions."
# Basic / regular functions don't understand the -Verbose parameter that proper PowerShell cmdlets do.
# Let's turn it into a PowerShell cmdlet, by using the [CmdletBinding()] attribute just inside the function body.
# Using [CmdletBinding()] means you must also specify a param () block
$ScriptBlock = {
  [CmdletBinding()] param ()
  Write-Verbose -Message 'Testing123'
  Write-Debug -Message 'This is a debug message'
}

& $ScriptBlock -Verbose 4>&1

# Merge all streams into the Output stream
& $ScriptBlock -Verbose -Debug *>&1
