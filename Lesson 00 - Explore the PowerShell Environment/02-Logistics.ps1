Clear-Host

Write-Host -ForegroundColor Green -Object @'
  1. Set up Visual Studio Code for development.
  2. I''ll introduce some key PowerShell concepts.
  3. Every 15-20 minutes, I''ll sync up the group and broadly answer questions that people have.
  4. Feel free to get up and use the restroom, get coffee, etc. whenever you feel appropriate.
  5. We have a scheduled 30 minute break from 3:00 PM to 3:30 PM Central Time.
'@

Start-Sleep -Seconds 5

Write-Host -ForegroundColor Green -Object 'Work through the workshop at your own pace.'

Read-Host

Write-Host -Object ('-'*50)
Write-Host -Object @((' '*12), 'Learning Objectives', "`n")
Write-Host -Object @'
  0. You'll install and configure Visual Studio Code for PowerShell development
  1. You'll understand the basics of PowerShell
  2. You'll understand how to work with modules
  3. You'll understand the essence of objects and how to inspect them
  4. You'll write your first PowerShell module (albeit simple)
  5. You'll be able to work with the core PowerShell commands (JSON, XML, DateTime, Files, Processes, etc.)
'@
Write-Host -Object ('-'*50)

Read-Host

Write-Host -ForegroundColor Green -Object @(
  'This event is for you. Use this opportunity to learn the essence of PowerShell.'
  'Ask lots of questions, feel free to call out anything that seems confusing.'
)
