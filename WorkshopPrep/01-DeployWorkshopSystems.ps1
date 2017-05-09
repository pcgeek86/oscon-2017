Clear-Host
$ErrorActionPreference = 'stop'
$VerbosePreference = 'continue'

$AWSProfile = 'pcgeek86'
$AWSRegion = 'us-east-2'
$AWSAccountId = @(Get-EC2SecurityGroup -GroupName default -ProfileName $AWSProfile -Region us-west-2)[0].OwnerId
$NumberOfStacks = 75
$EC2KeyPairName = 'Trevor'
$EC2KeyPair = $null

try {
  Remove-EC2KeyPair -KeyName $EC2KeyPairName -ProfileName $AWSProfile -Region $AWSRegion -Force
  Get-EC2KeyPair -KeyName $EC2KeyPairName -ProfileName $AWSProfile -Region $AWSRegion
  Write-Verbose -Message 'EC2 key pair already exists'
}
catch {
  $EC2KeyPair = New-EC2KeyPair -KeyName $EC2KeyPairName -ProfileName $AWSProfile -Region $AWSRegion
  Write-Verbose -Message 'Created a new EC2 key pair'
}

$Common = @{
  ProfileName = $AWSProfile
  Region = $AWSRegion
}

$Bucket = @{
  BucketName = 'oscon2{0}' -f $AWSAccountId
}
try {
  New-S3Bucket @Common @Bucket
} catch {
  Write-Verbose -Message 'Error occurred creating S3 bucket. Bucket may already exist.'
  $PSItem
}

$CFNTemplate = @{
  BucketName = $Bucket.BucketName
  File = 'WorkshopPrep.CloudFormation.json'
  Force = $true
}
Write-S3Object @Common @CFNTemplate
Write-Verbose -Message 'Finished uploading S3 object'

for ($StackNumber = 1; $StackNumber -le $NumberOfStacks; $StackNumber++) {
  $Stack = @{
    StackName = 'OSCON-{0}' -f $StackNumber
    TemplateUrl = 'https://{0}.s3.amazonaws.com/{1}' -f $CFNTemplate.BucketName, $CFNTemplate.File
    Parameter = @(
      New-Object -TypeName Amazon.CloudFormation.Model.Parameter -Property @{ ParameterKey = 'KeyName'; ParameterValue = $EC2KeyPairName }
      New-Object -TypeName Amazon.CloudFormation.Model.Parameter -Property @{ ParameterKey = 'EC2Password'; ParameterValue = [Guid]::NewGuid().Guid.Replace('-','').SubString(0, 20) }
    )
  }
  New-CFNStack @Common @Stack
}
Write-Verbose -Message 'Finished deploying CloudFormation stacks'

Remove-Item -Path keypair.pem -Force
Set-Content -Path keypair.pem -Value $EC2KeyPair.KeyMaterial
chmod 400 keypair.pem

Remove-Variable -Name StackNumber, NumberOfStacks, Common, Stack
return

Set-AWSCredentials -ProfileName $AWSProfile 
Set-DefaultAWSRegion -Region $AWSRegion

(Get-CFNStack).Outputs
(Get-EC2Instance).Instances
Get-EC2Address


Get-EC2Instance | Remove-EC2Instance -Force

New-EC2Instance

<#

          "runcmd:\n",
          " - adduser --groups sudo oscon\n",
          " - echo 'oscon:Password123!!**' | chpasswd",
          " - echo 'PasswordAuthentication Yes' >> /etc/sshd/sshd_config",
          " - /etc/init.d/sshd restart"

#>