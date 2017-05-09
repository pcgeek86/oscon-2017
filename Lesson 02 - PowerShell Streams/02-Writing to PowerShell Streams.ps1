# The Output stream is the "main" stream in PowerShell. 
# Anything written to this stream can be captured into a variable or passed down a pipeline.

# The Information stream is new to PowerShell 5.0+
Write-Information -MessageData 'This is a message in the information stream'

# The Verbose stream is useful for user-centric output that 
Write-Verbose -Message 'This is a message on the verbose stream'

# Write to the Debug stream. By default, the Debug stream isn't shown in the PowerShell Host.
Write-Debug -Message 'This is a debug message'

# If you add the -Debug switch parameter, you'll be prompted to confirm execution, but the
# debug stream will be written to the PowerShell host.
Write-Debug -Message 'This is a debug message' -Debug

# The Write-Output command is used to write to the output stream. However, you can also simply output the value of a 
# variable by simply dereferencing it. The Write-Output command is typically used inside a function to emit objects to
# the output stream.
Write-Output -InputObject

# Using Write-Host is generally not recommended, because:
# 
#   1. There is no guarantee that the PowerShell host implements a visually consumable data stream
#   2. It's impossible to capture the content written directly to the PowerShell host (NOT the same as the Output stream)
#
# However ... this command is still occasionally useful for producing colorized output on the screen.
Write-Host -ForegroundColor Green -Object ('-'*50)

# You can also write directly to the Error stream, using the Write-Error command
Write-Error -Message 'Something bad happened! We recommend more specific error messages than this one.'

# Notice that the exception is appended to the $Error automatic variable
$Error