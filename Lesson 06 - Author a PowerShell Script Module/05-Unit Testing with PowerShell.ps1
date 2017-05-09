# Pester is the unit testing framework for PowerShell. It's included with PowerShell "out of box" but you can also
# update the module from the PowerShell Gallery. Pester offers a simple domain-specific language (DSL) for defining
# unit tests. The main keywords you want to remember are:
#
#   - Describe
#   - Context
#   - InModuleScope
#   - It
#   - Should

Import-Module -Name $PSScriptRoot/OSCONModule

Describe -Name OSCONModule -Fixture {
    Context -Name 'Add command' -Fixture {
        It -Name 'Should return two numbers added together' -Test {
            OSCONModule\Add -X 5 -Y 9 | Should be 14
        }

        It -Name 'Should not multiply numbers together' -Test {
            OSCONModule\Add -X 6 -Y 8 | Should not be 48
        }

        It -Name 'Should not throw an exception' -Test {
            { OSCONModule\Add -X 5 -Y 11 } | Should not throw
        }

        It -Name 'Should not accept strings as input' -Test {
            { OSCONModule\Add -X test -Y string } | Should throw
        }
    }
}