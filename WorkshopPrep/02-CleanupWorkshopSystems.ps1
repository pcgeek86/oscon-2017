$ErrorActionPreference = 'stop'
Set-PSDebug -Strict 

$Common = @{
  ProfileName = 'pcgeek86'
  Region = 'us-east-2'
}

Set-AWSCredentials -ProfileName $Common.ProfileName
Set-DefaultAWSRegion -Region $Common.Region

function CleanupStacks {
  [CmdletBinding()]
  param ( )
  (Get-CFNStack @Common).Where({ $PSItem.StackName -match 'oscon' }).ForEach({ Remove-CFNStack -StackName $PSItem.StackName -Force @Common })

  while (Get-CFNStack) {
    Start-Sleep -Seconds 5
    Write-Verbose -Message 'Waiting for CloudFormation stacks to disappear ...'
  }
  Write-Verbose -Message 'All CloudFormation stacks have been cleaned up.'
}
CleanupStacks