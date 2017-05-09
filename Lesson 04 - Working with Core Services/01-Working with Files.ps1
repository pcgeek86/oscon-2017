# PowerShell provides a series of standard commands that allow you to read from and write to files.

# Get the file contents of yourself (the script you're running).
$Me = Get-Content -Path $MyInvocation.MyCommand.Path
$Me.Count

# Get the file contents as a single string, using the -Raw parameter
$Me = Get-Content -Path $MyInvocation.MyCommand.Path -Raw
$Me.Count

# Write some text to a file
Set-Content -Path $HOME/setcontent.txt -Value 'Welcome to OSCON!'

# Write some text to a file
# IMPORTANT: Note the default encoding of Out-File vs. Set-Content
'Welcome to OSCON!' | Out-File -FilePath $HOME/outfiletest.txt

# List the immediate children of a path
Get-ChildItem -Path $HOME

# Recursively get the child files / folders
Get-ChildItem -Path $pwd -Recurse

# Get only the child directories of a path (excludes files)
Get-ChildItem -Path $HOME -Directory

# Delete a file
Remove-Item -Path 

# Create a folder (uses the native Linux / Mac OS X command, not a PowerShell command)
$FolderPath = "$HOME/oscon-deleteme"
mkdir $FolderPath

# See if the folder exists (should be True)
Test-Path -Path $FolderPath -PathType Container

# Delete the folder
Remove-Item -Path $FolderPath -Recurse -Force

# Create a new item (file or folder) 
New-Item -Path $HOME/oscon-newitem.txt -ItemType File

# Create a new directory the "PowerShell way"
New-Item -Path $HOME/oscon-newdirectory -ItemType Directory