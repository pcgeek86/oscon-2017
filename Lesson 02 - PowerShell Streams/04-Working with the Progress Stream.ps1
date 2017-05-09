# The Progress stream gives you a standardized method of working with progress bars at
# the command line. The Write-Progress command allows you to update the progress of a particular
# activity.

# IMPORTANT: This example won't work in Visual Studio Code, as there isn't an implementation for the Progress stream.
# Please copy / paste this code into your PowerShell terminal instead.

$i = 1
while ($i -lt 100) {
    Write-Progress -Activity 'Processing files' -Status 'Searching for something ...' -PercentComplete $i
    Start-Sleep -Milliseconds 200
    $i++
}
