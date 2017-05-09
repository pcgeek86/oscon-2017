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

# Get the "online" help for a particular command. This will pop open your web browser.
# NOTE: A command must support the HelpURI attribute on its CmdletBinding, for this to work.
# More info: https://blogs.technet.microsoft.com/heyscriptingguy/2013/09/19/helpinfouri-helpuri-and-other-help-mysteries/
Get-Help -Name Get-Command -Online

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
