# Working with JSON is easy in PowerShell
# There are two commands you'll want to learn:
#   - ConvertTo-Json
#   - ConvertFrom-Json

# Convert Process objects to JSON representation
Get-Process | ConvertTo-Json

# Look at the "Threads" property, and notice how it is referred to as a
# System.Diagnostics.ProcessThread instance, instead of being expanded out.
# The same behavior is occurring with the "Modules" property.

# This is happening because the JSON is only being generated to a default depth of 2.

# If we specify a higher depth for serialization, we get more detailed output.
Get-Process | ConvertTo-Json -Depth 5

# Create a simple PowerShell HashTable and convert it to JSON
@{
  FirstName = 'Trevor'
  LastName = 'Sullivan'
  Topics = @('PowerShell', 'Motorcycles', 'Mountains', 'Beer')
} | ConvertTo-Json

# Convert simple JSON structure to a PowerShell object
$PeopleString = @'
{
  "People": [
    {
      "FirstName": "Trevor",
      "LastName": "Sullivan",
    },
    {
      "FirstName": "Dave",
      "LastName": "Sullivan",
    },
    {
      "FirstName": "Joe",
      "LastName": "Sullivan",
    }
  ]
}
'@

$People = $PeopleString | ConvertFrom-Json

# Look at the root object
$People

# Get the first person in the JSON array
$People.People[0]

