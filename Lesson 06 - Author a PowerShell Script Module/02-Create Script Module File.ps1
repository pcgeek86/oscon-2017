# A PowerShell Script module can be as simple as creating a stand-alone .psm1 file.

# IMPORTANT: Make sure you run this script with F5, not F8.

$ModulePath = '{0}/OSCONModule' -f $PSScriptRoot

# Create a simple PowerShell module
Set-Content -Path $ModulePath/OSCONModule.psm1 -Value @'
function Add {
  [CmdletBinding()]
  param (
    [int] $x,
    [int] $y
  )

  $x + $y
}
'@

# Generally speaking, you'll want to structure your modules in a more maintainable fashion.
# ./Functions/Private - Functions that are not intended to be exported from the PowerShell module
# ./Functions/Public - Functions that will be exported from the module
# ./Tests - Your Pester unit tests
# ./Completers - A folder containing Intellisense argument completers. You can write custom argument completers.

# Some people prefer to package tests separately. Others prefer to keep them with their module.