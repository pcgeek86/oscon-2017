# PowerShell Script modules are the easiest to create, because they don't require any
# dependencies besides PowerShell itself.

# The first thing you need to do is create a PowerShell module manifest.

# A PowerShell module manifest is a plain text file (UTF-8) that contains a HashTable (Dictionary)
# with special, pre-defined keys.

# If you haven't memorized the special keys, you can generate a new module manifest using
# the New-ModuleManifest command.

$ModulePath = '{0}/OSCONModule' -f $PSScriptRoot

# Create a new folder for the module
$null = [System.IO.Directory]::CreateDirectory($ModulePath)

# Generate the new module manifest.
New-ModuleManifest -Path $ModulePath/OSCONModule.psd1 -Author 'Trevor Sullivan' -Guid (New-Guid) -CompanyName 'Art of Shell' -RootModule OSCONModule.psm1 -FunctionsToExport Add

