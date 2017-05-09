# The Receive-Job command will obtain the output from a PowerShell Background Job.
# You can run the command against a job even while it's still executing, or after it has completed or failed.

# The -Wait parameter is a shortcut to calling the Wait-Job command separately, although Wait-Job is still useful
# if you want to wait for a specific job state.

# By default, receiving Background Job results will clear the results from the job.
# The -Keep switch parameter will preserve the job results in the Job object.

# A simple example of receiving job output.
$Job = Start-Job -ScriptBlock {
  1..5
}

Receive-Job -Job $Job -Wait

# In this example, we'll fail the job, but notice how we are still able to retrieve the output and error information from it.
# We'll also preserve the Job output, using the -Keep parameter.
$Job = Start-Job -ScriptBlock {
  Get-ChildItem -Path /
  throw 'This job is going to fail!'
}

Receive-Job -Job $Job -Keep -Wait