# If statements are pretty straightforward

$Number = 10

if ($Number -eq 10) {
  'You got 10!'
}
elseif ($Number -eq 2) {
  'You got two!'
}
else {
  'You got something other than 2 or 10!'
}

# Common mistake: Make sure you use comparison operators, not equality operators.
  # The following example could be very perplexing. :)

$Number = 5

if ($Number = 6) {
  'It equals six!'
}
else {
  'It does not equal six.'
}

