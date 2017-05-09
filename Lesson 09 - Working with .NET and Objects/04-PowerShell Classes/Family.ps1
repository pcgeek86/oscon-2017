. $PSScriptRoot/Person.ps1

# If you hover over the [Person[]] property definition below, you'll see it complain
# that it can't find the Person class, even though we're dot-sourcing the file.
class Family { 
  [Person[]] $Members
}
