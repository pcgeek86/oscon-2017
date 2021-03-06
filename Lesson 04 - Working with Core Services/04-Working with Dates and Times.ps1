# Use the Get-Date command to retrieve the current date/time
Get-Date

# You can format the date as you see fit using custom .NET format strings
# See more from this document: https://msdn.microsoft.com/en-us/library/8kb3ddd4(v=vs.110).aspx
Get-Date -Format 'yyyy:MM:dd'

# You can use the standard DateTime formats in the .NET Framework. 
# See this document for a reference: https://msdn.microsoft.com/en-us/library/az4se3k1(v=vs.110).aspx
# This example retrieves the "round-trip" DateTime format.
Get-Date -Format o

# Adjust individual components of the DateTime. Since we don't specify the month, it
# just uses the current month.
Get-Date -Year 2015 -Day 5 -Hour 7 -Minute 30

# If you want UTC time, use the DateTime class in the System .NET namespace
# Use variable "squeezing" to assign and output the result simultaneously
($Utc = [System.DateTime]::UtcNow)

# Off-topic really quick ...
# Use Tee-Object to assign and emit result to Output stream (same as squeezing)
[System.DateTime]::UtcNow | Tee-Object -Variable Utc

# Back on-topic ...
# Let's take a look at all the properties of the DateTime object
$Utc | Format-List -Property *
# Short-hand version of the above ...
$Utc | fl *

# The DateTime object has a bunch of useful methods to add and subtract time
$Utc | Get-Member -MemberType Method

# Now let's switch from working with DateTime to working with time ranges (TimeSpan)
$Hourly = [System.TimeSpan]::FromMinutes(60)
$Hourly | fl *

# Check out the methods
$Hourly | Get-Member -MemberType Method

# Get the opposite / negative value of the current TimeSpan
$Hourly.Negate()

# Add a TimeSpan to another TimeSpan
# Because TimeSpan is a struct (value type), not a class (reference type), you'll get a new TimeSpan 
# object returned. The original object isn't modified.
$Hourly.Add([timespan]::FromDays(1))

# We can use the common GetType() method in the .NET Framework to verify this. Notice how the "BaseType"
# of the object is System.ValueType
$Hourly.GetType()