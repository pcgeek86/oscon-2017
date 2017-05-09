# PowerShell expands on the notion of StdIn, StdErr, and StdOut, and instead gives you
# a whole variety of streams that you can write data to. The streams that are supported by
# PowerShell have human-friendly names, including:
#
#   - Debug
#   - Information
#   - Verbose
#   - Output
#   - Warning
#   - Error
#   - Progress

# The behavior of PowerShell streams can be manipulated using "preference" variables
# and the redirection operators.

# The main help document for PowerShell streams is the about_Redirection topic
Get-Help -Name about_redirection

# PowerShell has a series of global "preference" variables that allow you to 
# control the default behavior for each stream.

# Set the Verbose action to "continue" (emit the Verbose stream, but continue execution)
$VerbosePreference = 'continue'

# Set the Error action to Stop
$ErrorActionPreference = 'stop'

# Set the Information stream to silent
$InformationPreference = 'SilentlyContinue'

# Find all preference variables
Get-Variable -Name *preference*