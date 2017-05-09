# PowerShell commands are, by convention, named using the Verb-Noun syntax.

# If you import a PowerShell module that has non-standard command names, you might receive a warning.

# Get a list of all commands available on the system.
# Examine the output of this command.
# NOTE: Some commands may not be listed if a poorly-written PowerShell module doesn't expose the command
#       names statically in the module manifest.
Get-Command

# Retrieve a command by its name.
# NOTE: If there are ambiguous command names, more than one object may be returned.
#       For example, two different modules could expose a duplicate command name.
Get-Command -Name Select-Object

# Retrieve all commands that start with "select."
Get-Command -Name Select*

# Retrieve all commands from a particular module
Get-Command -Module Microsoft.PowerShell.Host

# There are different types of commands available:
#   - Cmdlets - Compiled .NET assemblies containing PowerShell commands
#   - Advanced Functions - Script functions that use [CmdletBinding()] attribute
#   - Aliases - PowerShell command aliases
#   - Application - Native applications (ifconfig, bash, powershell, etc.)
#   - Configuration - DSC configuration documents

# Get alias commands
Get-Command -CommandType Alias

# Get native (non-PowerShell) commands matching a particular name
Get-Command -CommandType Application -Name *config*

# You can get commands from a specific module version, using a ModuleSpecification object
# For more information, see: Get-Help -Name Get-Command -Parameter FullyQualifiedModule
Get-Command -FullyQualifiedModule @{ ModuleName = 'Microsoft.PowerShell.Management'; ModuleVersion = '3.1.0.0' }

# Calling native commands is fairly straightforward
mkdir -p $HOME/oscon2017test