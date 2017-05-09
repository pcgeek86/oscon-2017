# PowerShell drives are mount points to hierarchical data structures, such as the filesystem. PSDrives are built on an 
# abstract concept of a PSProvider.
Get-PSDrive

Get-PSDrive | Format-List -Property *

# The New-PSDrive command creates a new mount point.
New-PSDrive -Name Home -PSProvider FileSystem -Root $HOME

# We can change into the "Home" PSDrive
Set-Location -Path Home:

# The native "ls" command isn't aware of PSDrives
ls home:

# But PowerShell commands are PSDrive-aware!
Get-ChildItem -Path Home:

# Write a new text file to the Home: PSDrive
Set-Content -Path Home:/psdrivesarecool.txt -Value ''

# Remove the PSDrive we created
Set-Location -Path $HOME
Remove-PSDrive -Name Home

# On the Microsoft Windows platform, the Computer and User's certificate store
# are mounted as a PSDrive, which makes working with certificates very easy.

# Similarly, there is a Registry provider on the Windows platform, that makes 
# automation of the Registry much easier.

# You can use the Get-PSProvider command to list out all of the supported providers on your platform
Get-PSProvider