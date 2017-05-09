# PowerShell formatting helps you change the way objects are emitted to the PowerShell host.

# Find formatting PowerShell cmdlets
Get-Command -Name Format*

# We can change the output to list format, which is better for "wide" object properties (eg. a log entry).
Get-Process | Format-List

# We can get all the properties from the objects, using the -Property parameter
Get-Process | Format-List -Property *

# We can also get specific properties by specifying an array of strings
Get-Process | Format-List -Property Cpu, Path, HasExited, *time*

# The default output of Get-Process is in a tabular format
Get-ChildItem | Select-Object -Property *

# Format content as a hexidecimal representation
Get-Content -Path $HOME/setcontent.txt | Format-Hex

# Let's grab some filesystem objects
Get-ChildItem -Path / | Select-Object -Property *

# But what if we want to make this more readable? Let's turn it into tabular output.
Get-ChildItem -Path / | Select-Object -Property * | Format-Table -AutoSize

