# There are a couple of different types of aliases in PowerShell.
# Aliases include:
#   - Command aliases
#   - Parameter aliases

# Get a list of all command aliases in the current PowerShell session
Get-Alias
# Alias for Get-Alias
gal

# Get all aliases for a specific command or array of commands
Get-Alias -Definition Get-ChildItem, Get-Command

# Create a new command alias
# NOTE: You can't add parameters to command aliases
New-Alias -Name lss -Value Get-ChildItem

# Grab the parameter metadata from a command
# You'll see the parameter aliases defined on each parameter metadata object
(Get-Command -Name Get-ChildItem).Parameters.Values.ForEach({ $PSItem })

# On the Get-ChildItem command, the -Recurse parameter is aliased as -s
Get-ChildItem -s -Path $HOME

# Since you can't add parameters to command aliases, you can wrap a command in an anonymous ScriptBlock (think 
# anonymous methods, in other languages), and invoke the ScriptBlock.

# Define the ScriptBlock with all the parameters.
$PowerShellScript = { Start-Process -FilePath powershell -ArgumentList '-Command Start-Sleep -Seconds 1' -Wait }

# Once you've defined a ScriptBlock, there are a few ways of calling it.

# Call the ScriptBlock in dedicated scope using the & call operator.
& $PowerShellScript

# Call the ScriptBlock, importing its scope into the "current" scope.
. $PowerShellScript

# Call the ScriptBlock using the ScriptBlock object's .Invoke() method.
$PowerShellScript.Invoke()
