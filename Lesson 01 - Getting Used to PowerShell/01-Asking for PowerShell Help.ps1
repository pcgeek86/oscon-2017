#
# .Date
# 2017-05-09
# 
# .Author
# Trevor Sullivan

# PowerShell Help pages are similar to man pages, but offer a richer experience.
# It's up to each PowerShell function / module developer to provide help.

Get-Help -Name Get-Help

# Get help for a PowerShell provider
Get-Help -Category Provider -Name Alias

# Some documentation is broken in Alpha, but this would normally show you conceptual help topics
Get-Help -Category HelpFile

# By default, you're shown consolidated help for PowerShell commands
Get-Help -Name Start-Process

# If you want a specific section of help, you can specify it:
#   - Parameters
#   - Detailed
#   - Full
#   - Examples
Get-Help -Name Start-Process -Detailed

# "Full" help includes examples, parameter help, etc.
Get-Help -Name Start-Process -Full

# Get help for all parameters on the command
Get-Help -Name Start-Process -Parameter *

# Get help for a specific parameter on the command
Get-Help -Name Start-Process -Parameter FilePath

Get-Help -Name Start-Process -Detailed