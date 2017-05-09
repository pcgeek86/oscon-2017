# CLIXML is a special XML format that allows you to store a .NET object in a serialized representation.

# The Export-Clixml command writes one or more objects to a file.
Get-Process | Export-Clixml -Depth 5 -Path $HOME/gps-clixml.xml

# You can import objects from a CLIXML file, using the Import-Clixml command
$DeserializedProcessList = Import-Clixml -Path $HOME/gps-clixml.xml

# Notice that the imported objects are deserialized objects that aren't "live"
# We can't call instance methods on deserialized objects, because they have lost their binding to the underlying object.
$DeserializedProcessList[10] | Get-Member

