# In PowerShell, built-in variables are called "automatic" variables.

# List all variables in the current PowerShell session
Get-Variable

# Check what version of PowerShell and the .NET CLR you're running.
$PSVersionTable

# The host variable contains information about the .NET process that
# is hosting the PowerShell Engine.
$Host

# Access environment variables using this syntax
$env:HOME

# The special $PSDefaultParameterValues command enables you to set default
# parameters to reduce typing. Be careful with this though, as it can cause
# unpredictable behavior if you're not aware of it.
$PSDefaultParameterValues = @{
  'Write-Host:ForegroundColor' = 'Green'
}
Write-Host -Object 'This is a test'

# In PowerShell, module auto-loading is enabled by default. If you want to control this
# feature, you can use the $PSModuleAutoLoadingPreference variable. It's a boolean value, 
# so set it to either $true (enabled) or $false (disabled).
$PSModuleAutoLoadingPreference

# If you want the folder path of the script that's running, use $PSScriptRoot.
# IMPORTANT: This variable will be $null if you run it using F8 in VSCode, because you're not invoking a script file.
$PSScriptRoot

# The $MyInvocation variable provides rich contextual information about the invocation of the current command / script.
# Dig into the $MyInvocation variable to figure out the full path to the current function
$MyInvocation.MyCommand.Path

# The $profile variable contains pointers to the "profile" script paths for PowerShell. The various profile
# scripts can target PowerShell at different scopes.
#
#   - All Users, Current Host
#   - All Users, All Hosts
#   - Current User, Current Host
#   - Current User, All Hosts
$profile | Get-Member
$profile | Select-Object -Property *
$profile.AllUsersAllHosts
$profile.CurrentUserCurrentHost