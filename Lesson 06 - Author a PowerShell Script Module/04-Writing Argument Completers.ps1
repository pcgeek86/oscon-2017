# The Register-ArgumentCompleter command enables module authors to include
# Intellisense extensions so that users can tab-complete parameter values.

# A great built-in example of this is the Get-Process -Id parameter, which 
# provides dynamic Intellisense for process IDs

# There are only three parameters you need to worry about:
#
#   - CommandName (array)
#   - ParameterName (string)
#   - ScriptBlock (ScriptBlock) - the code that will execute to retrieve results

Register-ArgumentCompleter -CommandName Add -ParameterName X -ScriptBlock { 1..10 }

# Now, when you type Add -X, you'll get a list of Intellisense results for this parameter.
# It's not a sensible example, because the -X parameter can accept any valid integer, but 
# it's a simple demonstration of how to expose Intellisense.

# You can embed any code that you want inside the ScriptBlock, calling out to a web API,
# querying a database cache, or a cache that you create on the local filesystem. It's up
# to you how to implement this capability, just know that it exists.

# You can include a bunch of Intellisense registrations with your PowerShell module, and 
# dot-source them in your module's .psm1 file. That way, as soon as your user imports
# your PowerShell module, your module's commands, along with the Intellisense, will be
# available to them. This greatly improves the user experience, and minimizes friction.