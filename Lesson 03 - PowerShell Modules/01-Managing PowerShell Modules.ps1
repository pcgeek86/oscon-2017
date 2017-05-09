# There are two types of PowerShell modules:
#   - Script
#   - Binary

# You can search for and install modules from the public-facing PowerShell Gallery.
# You can also set up a private NuGet feed and publish modules there.
# https://powershellgallery.com

# The PowerShellGet module is built-in to PowerShell 5.0+ and enables interaction with the
# PowerShell Gallery. Let's start off by exploring the commands exposed by this module.
Get-Command -Module PowerShellGet

# Search for a module names Emojis
Find-Module -Name Emojis

# See if there are other versions of the module
Find-Module -Name Emojis -AllVersions

# Search for modules using wildcards
Find-Module -Name *emo*

# Search for modules using a common tag
Find-Module -Tag queue

# Search for modules using more than one tag
Find-Module -Tag queue, cloud

# Installing a module is easy, using the Install-Module command.
# You can install modules into your user directory (non-root) or install them
#   for all users (requires root).
Install-Module -Name Emojis -Scope CurrentUser -Force

# See which modules were installed using PowerShellGet
Get-InstalledModule

# Remove a module that was installed using PowerShellGet. 
# NOTE: This doesn't work for modules that were installed using a mechanism other than PowerShellGet.
Uninstall-Module -Name Emojis -AllVersions -Force

# You can set up an internal NuGet feed and set it up as a private artifact repository
Register-PSRepository -Name MyCoolFeed -SourceLocation https://path.to/repo -PublishLocation https://path.to/nuget/feed

