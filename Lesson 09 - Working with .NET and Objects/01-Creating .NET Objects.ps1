# You can work use PowerShell kind of like a "C# scripting language" in the sense
# that you can plug directly into the .NET Framework, instantiate objects, load external assemblies.

# NOTE: As of this writing, there are outstanding issues with loading external .NET assemblies
#       in PowerShell Core Edition, but this works great on the Microsoft Windows platform running
#       PowerShell Desktop Edition.

# Example of calling a static method (CreateDirectory) on a class (System.IO.Directory)
# Notice that Visual Studio Code gives us Intellisense for the method signature

[System.IO.Directory]::CreateDirectory("$HOME/oscon-dotnet")

# In PowerShell nomenclature, every .NET class with a constructor offers a static "new" method
$NewProcess = [System.Diagnostics.Process]::new()

# You can set properties and call instance methods on objects
$NewProcess.StartInfo = [System.Diagnostics.ProcessStartInfo]::new('powershell')
$NewProcess.Start()

# You can also use the New-Object command to invoke an object's constructor
$FileInfo = New-Object -TypeName System.IO.FileInfo -ArgumentList 'powershell-test.txt'
