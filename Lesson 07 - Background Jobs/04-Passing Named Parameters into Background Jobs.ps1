# You can pass named parameters in to Background Jobs as well, although you can't actually specify 
# the parameter name when passing it in. You can still give the parameter a name inside the ScriptBlock.

# EXAMPLE: Pass named parameters into Background Jobs
$Job = Start-Job -ScriptBlock {
  [CmdletBinding()]
  param ([string] $FirstName)
  Write-Output -InputObject ('Hello, this background job belongs to {0}' -f $FirstName)
} -ArgumentList 'Trevor'

Receive-Job -Job $Job -Wait