# What can I do with processes? Find out using Get-Command.
Get-Command -Name *process*

# Retrieve a list of processes on the local system
Get-Process

# Retrieve a process with a specific ID
Get-Process 

# Stop a process
Stop-Process -Name powershell

# Start new processes
#   - FilePath - the path to the binary file that you want to invoke (eg. powershell, ls, mkdir, etc.)
#   - ArgumentList - a string containing the arguments to the command
#   - Wait - a switch parameter that waits for the process to run and exit
#   - RedirectStandardOutput - points to a file path where the StdOut will be written to
Start-Process -FilePath powershell -ArgumentList '-Command Start-Sleep -Seconds 2' -Wait -RedirectStandardOutput "$HOME/oscon-stdout.txt"

# Once PowerShell Remoting is fully implemented, you'll be able to debug PowerShell processes remotely.
# This capability works today on the Windows version of PowerShell (Desktop Edition).