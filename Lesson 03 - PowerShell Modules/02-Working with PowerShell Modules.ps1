# PowerShell modules are the mechanism to author and package a set of common functionality
# and share it within your team, organization, or with the world.

# List the modules installed on the system in $env:PSModulePath
# Short-hand: gmo -list
Get-Module -ListAvailable

# List the modules currently imported into the session
Get-Module

# Import the Emojis PowerShell module.
# NOTE: Normally, PowerShell module auto-loading will load the module for you,
#       but if you've disabled module auto-loading, then you'll need to explicitly
#       import modules.
Import-Module -Name Emojis

# Inspect the commands that are in the Emojis module.
# INTROSPECTION: "What can I do with this module?"
Get-Command -Module Emojis

# A module is an object, just like any other object in PowerShell.
$MyModule = Get-Module -Name Emojis -ListAvailable
$MyModule | Select-Object -Property *

# You can create dynamic, in-memory PowerShell modules using the New-Module command.
# The help documentation for New-Module is helpful in learning how this works.
Get-Help -Name New-Module -Detailed

# Let's create a new module with a single function.
New-Module -Name OSCON -ScriptBlock {
  function Add ($x,$y) { $x + $y }
} | Import-Module

