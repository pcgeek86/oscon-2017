# One of the great things about PowerShell is the ability to discover things that you don't know.
# Given any particular object, or object array, you can "reflect" over it using the Get-Member command.

# Notice how output is consolidated to each unique object type. 
Get-Process | Get-Member

# If you only care about properties or methods, you can limit the output from Get-Member, using the
# -MemberType parameter.
Get-Process | Get-Member -MemberType Method

# Notice how we get back a couple different types of properties: "ScriptProperties" and "Property"
# The "ScriptProperty" items are added onto the core .NET object by the PowerShell adaptive type system.
# They're not available in a C# program that's using the same type.
Get-Process | Get-Member -MemberType Properties

# Use the Select-Object command to limit output to properties you care about
Get-Process | Select-Object -Property *name*

# Use the Select-Object command to select unique objects in the pipeline
@('Trevor', 'Trevor', 'Bill', 'Aaron') | Select-Object -Unique

# You can use the .GetType() method on any .NET object to find out what its underlying type is
(Get-ChildItem -Path /var)[0].GetType()

# The object's type information is an object itself, so you can extrapolate on that.
(Get-ChildItem -Path /var)[0].GetType() | Select-Object -Property *

# Reflect over the RuntimeType properties and methods
(Get-ChildItem -Path /var)[0].GetType() | Get-Member

# By using the .NET RuntimeType metadata, you can dive deep into an object's structure.
# You can do things like examine methods, properties, events, constructors, attributes, and more

# For example, let's take a look at the constructors for a DirectoryInfo object
(Get-ChildItem -Path /var)[0].GetType().GetConstructors()

