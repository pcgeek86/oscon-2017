# PowerShell has an "adaptive type system" that provides wrappers around the core .NET objects that it deals with.
# You can inspect the type adapters in more detail by using the following properties:
#
# PSObject
# PSAdapted 
# PSExtended
# PSBase
#
# By default, these properties are hidden, but you can use Get-Member with the -Force switch parameter to view them.
# They're categorized as "MemberSet" properties, so we can filter down to just those results, using the -MemberType
# parameter on the Get-Member command.
Get-ChildItem -Path $HOME | Get-Member -Force -MemberType MemberSet

# Get the "extended" view of the PowerShell object
(Get-ChildItem -Path $HOME)[0].PSExtended

# Get the "raw" underyling .NET object
(Get-ChildItem -Path $HOME)[0].PSBase

# Get the PowerShell "adapted" view of the object
(Get-ChildItem -Path $HOME)[0].PSAdapted

# Get the generic PSObject view of the object
(Get-ChildItem -Path $HOME)[0].PSObject

