# The Wait-Job command helps you pause execution until one or more jobs have reached a certain state
# You can wait on jobs using their ID, InstanceID, Name, or the Job object.
$Job = Start-Job -ScriptBlock {
  Start-Sleep -Seconds 5
}
Wait-Job -Job $Job

