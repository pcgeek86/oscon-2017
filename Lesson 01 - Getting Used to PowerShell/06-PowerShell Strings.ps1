# In PowerShell, there are a couple different ways of defining strings.

'Single-quoted strings can contain double quotes "like this"'

"Double-quoted strings can contain single quotes 'like this'"

"Double-quoted strings are handy, but should be avoided because variables like $ErrorActionPreference will get interpolated."

'If you use single-quoted strings, you get a literal representation of text, like $Host or $(Get-ChildItem).'

# In double-quoted strings, you can add special characters

# Add a tab to your string
"`tTrevor"

# Add a new-line to your string
"Trevor`nDaniel"

# There's a technique called .NET String Formatting, that enables you to build strings
# using a templating technique.
# Documentation: https://msdn.microsoft.com/en-us/library/system.string.format(v=vs.110).aspx

# In PowerShell, you use the -f operator to invoke .NET String Formatting. By using template strings,
# you produce more predictable and reusable strings, compared to getting accidental interpolation 
# with double-quoted strings.
'{0}/../Tests/Unit.Tests.ps1' -f $PSScriptRoot


# Here-Strings

# A single-quoted here-string can contain single quotes without having to double them up.
$Command = @'
Set-Content -Path 'This is a really long path.txt' -Value
'@
Invoke-Expression -Command $Command

# Keep in mind that double-quoted here-strings still perform variable and subexpression expansion
@"
$((Get-Process).Name)
"@

# Regular expression matches
$Sentence = 'Trevor is excited to show others how to use PowerShell!'
$DidMatch = $Sentence -match 'Trevor'

# The $matches automatic variable contains match results
if ($DidMatch) {
  $matches
}

# Now we'll do a regular expression match against an array of strings (think grep)
$NameList = @'
Trevor
Daniel
Laken
James
Evelyn
Ariel
Adam
'@

# A regular expression match against an array returned matching lines.
$NameList.Split("`n") -match 'e'
