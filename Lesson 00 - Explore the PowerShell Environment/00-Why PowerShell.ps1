Write-Host -ForegroundColor Green -Object 'Welcome to OSCON. My name is Trevor Sullivan.'
Write-Host -ForegroundColor Green -Object 'This is the workshop named PowerShell: The Future of Automation on Linux.'

Read-Host

Write-Host -Object 'What shell are you using today?' -ForegroundColor Green
Read-Host

Write-Host -Object 'You''re probably here because you''ve heard a lot about PowerShell, and you are eager to learn more.'
Start-Sleep -Seconds 5
Write-Host -Object 'Although you might be writing automation in Python, Bash, or Ruby, you''re curious what PowerShell can offer.'
Read-Host

Write-Host -Object 'PowerShell is an object-oriented automation platform. It''s not *just* a shell, but that''s part of it.'
Read-Host

Write-Host -Object 'One of the core design tenets of PowerShell is the idea of "discoverability."'
Write-Host -Object @(
  'You may not immediately know how to perform some kind of operation in PowerShell, but armed with a few,',
  'key tools, you can most likely figure out how to accomplish your goals.'
  )
Read-Host

Write-Host -Object @(
  'PowerShell started out as a Windows-exclusive automation framework in 2006.',
  'Approximately 10 years later, PowerShell became open source, and was ported to work on Mac OS X and Linux, in addition to Windows.'
  )

Write-Host -Object @'
There are two different editions of PowerShell available.

  - PowerShell Desktop Edition - available on Microsoft Windows, not open source
  - PowerShell Core Edition - available on Linux, Mac, Windows, and is open source

Today, we'll be working with PowerShell Core Edition.
'@

Read-Host

Write-Host -Object @('Thanks for coming to OSCON 2017, and we hope that you enjoy the conference!')

