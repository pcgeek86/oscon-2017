# Let's talk through the process of setting up our PowerShell development environment.
# It's pretty simple, and you can customize as much or as little as you want to.
# The bare minimum are the first two steps. After that, everything is preferential.

# Install Visual Studio Code

# Install the Visual Studio Code PowerShell Extension

# Open your VSCode User Settings (eg. CMD + ,)

  # Change the VSCode Integrated Terminal to PowerShell
    # "terminal.integrated.shell.osx": "/usr/local/bin/powershell"
    # "terminal.integrated.shell.linux": "/usr/local/bin/powershell"
    # "terminal.integrated.shell.windows": "/usr/local/bin/powershell"

  # Launch the Integrated Terminal on start-up
    #   "powershell.integratedConsole.showOnStartup": true

  # Change your indent size
    #   "editor.tabSize": 2,
    #   "editor.insertSpaces": true,

  # Turn on the code minimap
    #   "editor.minimap.enabled": true,
    #   "editor.minimap.maxColumn": 80

  # Add a ruler at 120 characters
    #   "editor.rulers": [ 120 ]

  # Enable VSCode code formatting (optional)
    #   "editor.formatOnPaste": true,
    #   "editor.formatOnSave": true,
    #   "editor.formatOnType": true
  # NOTE: The code directly below should automatically be fixed when saving this file
  #       You can also just hit ENTER at the end of the line to invoke code formatting.
if ($true) { 'yeah' } else { 'nope' }

  # Switch on the PowerShell Script Analyzer (PSScriptAnalyzer)
    #   "powershell.scriptAnalysis.enable": true

  # Switch on line highlighting
    #   "editor.renderLineHighlight": "all"

# Change your Visual Studio Code color theme (try it now!). Hit F1 or CMD + SHIFT + P, search for "Preferences: Color Theme"

# Change your Visual Studio Code icon theme. Hit F1 --> search for "icon theme"

# Get familiar with the PowerShell commands in the Visual Studio Code Command Palette
# F1 --> search for "powershell"

# You can run blocks of PowerShell code by selecting it and hitting F8.
# If you don't have anything selected, then F8 will trigger the entire line that your cursor is currently on.
Get-Process

# Get used to the Visual Studio Code "Reload Window" command, as well as the
# PowerShell-specific "PowerShell: Restart Current Session" command. You'll likely end up using
# both of these fairly regularly, as there are still a few bugs in VSCode and the VSCode-PowerShell extension.

# You can report bugs for VSCode and the VSCode PowerShell Extension here:
#
  #   - https://github.com/Microsoft/vscode/issues
  #   - https://github.com/PowerShell/vscode-powershell/issues

# Check out the "Show Errors and Warnings" (aka. "Problems") that makes recommendations to improve your code.

