# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

 "iNvEsTiGaTiOn".swapcase
#irb(main):001:0> "iNvEsTiGaTiOn".swapcase
#=> "InVeStIgAtIoN"


# "zom".<???>
# => “zoom”
 "zom".insert (1,"o")

# "enhance".<???>
# => "    enhance    "
"enhance".center(15)


# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
"Stop! You’re under arrest!".upcase

# "the usual".<???>
#=> "the usual suspects"
"the usual".concat( " suspects")

# " suspects".<???>
# => "the usual suspects"
" suspects".prepend("the usual")

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
"The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
"The mystery of the missing first letter".delete!("T")

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
"Elementary,    my   dear        Watson!".squeeze(" ")


# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
"z".ord
#ASCII character number

# "How many times does the letter 'a' appear in this string?".<???>
# => 4
"How many times does the letter 'a' appear in this string?".count('a')