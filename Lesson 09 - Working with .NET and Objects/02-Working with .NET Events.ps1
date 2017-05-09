# The Register-ObjectEvent command allows you to register for an event on a .NET object.

# For example, let's get a Process object, and subscribe to the 'Exited' event to call
# some code as soon as the process exits.

# First, we'll use the Start-Process command to instantiate a new process
# The -PassThru parameter returns the new Process object that's created
$Process = Start-Process -FilePath powershell -ArgumentList '-Command Start-Sleep -Seconds 15' -PassThru

# Now we call Register-ObjectEvent, specify the object we're subscribing to events for,
# the name of the event we want to monitor, and the code (aka. "Action") that we want to 
# occur when the event is triggered.
Register-ObjectEvent -InputObject $Process -EventName Exited -Action { 
  Write-Host -Object 'The process has exited.'
}

# While the above example was fairly simple, let's say you wanted some contextual data
# inside the event handler ScriptBlock, specified by the -Action parameter. Inside this
# ScriptBlock, there's a built-in variable called $Event that allows you to access all of
# the data related to the event, including the objected that triggered the event.
Register-ObjectEvent -InputObject $Process -EventName Exited -Action {
  Write-Host -Object ('The process ID {0} has exited' -f $Event.Sender.Id)

  # You can inspect the entire $Event object more deeply by emitting the JSON representation 
  # to the PowerShell host.
  Write-Host -Object ($Event | ConvertTo-Json -Depth 4)
}