# You can dynamically add methods and properties to any object

# While the Get-Member command allows you to inspect objects, the Add-Member command is used
# to dynamically add properties and methods to objects.

# A "NoteProperty" is a simple property that is added to an object.
# The -PassThru parameter emits the modified objects to the pipeline, so you can continue to work with them.
$Process = Get-Process -Name powershell | Add-Member -MemberType NoteProperty -Name MyProperty -Value MyCoolValue -PassThru

# Examine the new static property we created on the object
$Process.MyProperty

# A "ScriptMethod" is a method that's added to an object by defining the method body as a ScriptBlock.
# We'll capture them into a variable called $ProcessList.
# Then we'll add a new method to each Process object that retrieves a simplified view of the object, returning
# a HashTable with only the Name and Id of the Process.
$ProcessList = Get-Process | Add-Member -MemberType ScriptMethod -Name GetSimpleObject -Value { @{ Id = $this.Id; Name = $this.Name } } -PassThru

# Now we can index into the Process array and call the new GetSimpleObject method
$ProcessList[220].GetSimpleObject()

