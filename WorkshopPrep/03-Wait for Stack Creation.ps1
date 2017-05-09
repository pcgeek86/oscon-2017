function WaitForStackCreation {
  while (1 -eq 1) {
    Get-CFNStackEvent -StackName OSCON-20 | Sort-Object -Property Timestamp | Format-Table -Property *status*,*type,*time*
    Start-Sleep -Seconds 10
  }
}
WaitForStackCreation