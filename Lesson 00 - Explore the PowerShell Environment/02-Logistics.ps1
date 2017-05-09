Clear-Host

Write-Host -ForegroundColor Green -Object @'
  1. Set up Visual Studio Code for development.
  2. I''ll introduce some key PowerShell concepts.
  3. Every 15-20 minutes, I''ll sync up the group and broadly answer questions that people have.
  4. Feel free to get up and use the restroom, get coffee, etc. whenever you feel appropriate.
'@

Start-Sleep -Seconds 5

Write-Host -ForegroundColor Green -Object 'Work through the workshop at your own pace.'

Read-Host

Write-Host -Object ('-'*50)
Write-Host -Object @((' '*12), 'Learning Objectives')
Write-Host -Object ('-'*50)

Read-Host

Write-Host -ForegroundColor Green -Object @(
  'This event is for you. Use this opportunity to learn the essence of PowerShell.'
  'Ask lots of questions, feel free to call out anything that seems confusing.'
)
