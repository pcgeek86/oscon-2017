# PowerShell 5.0 and later support class definitions. This is useful for building
# data models that are used in PowerShell programs.

# Classes can have properties, methods, constructors, and constructor / method overloads.
class Person {
  # Add a couple properties to the class
  [string] $FirstName
  [string] $LastName

  # Initialize property to default value
  [bool] $IsHungry = $true

  [void] Eat() {
    $this.IsHungry = $false
  }

  # Implement a default constructor (no input parameters)
  Person() {
    $this.IsHungry = $true
  }

  # Constructor / method input parameters are defined using PowerShell variable syntax
  Person($FirstName) {
    $this.FirstName = $FirstName
    $this.IsHungry = $true
  }

  # Parameters can optionally declare a type
  Person([string] $FirstName, [string] $LastName) {
    $this.FirstName = $FirstName
    $this.LastName = $LastName
    $this.IsHungry = $true
  }
}
# DIRECTIONS: 
#   - Select the class above and hit F8, or paste it into a terminal. This imports the class into your PowerShell session
#   - Then run the lines below individually, and observe the output

# Construct an object using the new PowerShell 5.0 syntax
[Person]::new()
[Person]::new('Trevor')
[Person]::new('Trevor', 'Sullivan')

# Create an object using the traditional PowerShell syntax
New-Object -TypeName Person
New-Object -TypeName Person -ArgumentList 'Trevor'
New-Object -TypeName Person -ArgumentList 'Trevor', 'Sullivan'

# IMPORTANT: A major limitation of PowerShell classes is that a class referring to another class
# in a different script file is not supported.

# Check out the ./04-PowerShell Classes directory for an example. 