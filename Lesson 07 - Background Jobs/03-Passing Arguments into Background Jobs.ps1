# You can pass arguments into Background Jobs

# Pass arguments into Background Jobs
$Job = Start-Job -ScriptBlock {
  $InformationPreference = 'continue'

  foreach ($Person in $args[0]) {
    Write-Information -MessageData ('Processing {0}' -f $Person)
  }
} -ArgumentList (,@('Trevor', 'Jerry', 'Brittany', 'Tiffany'))
