# PowerShell Background Jobs are a mechanism allowing you to invoke code asynchronously.
# Each PowerShell Background Job spins up a new PowerShell process. 

# Be aware that PowerShell has some decent start-up overhead, so consider using Background Jobs for 
# things like background workers on a loop (eg. processing messages on a queue, scheduled tasks, etc.)
# that minimize the impact of the start-up overhead.

# For higher performance, check out the PoshRSJob module from Boe Prox. This PoshRSJob module can spin
# up new PowerShell Runspaces in the same process, which have dramatically less start-up overhead.

# Each Background Job you start has a single parent job, and one or more child jobs.

# Start a new Background Job 
Start-Job -ScriptBlock { Start-Sleep -Seconds 5 }
