stdYear = 60 * 24 * 365
leapYear = 60 * 24 * 366

var1 = 8 * stdYear + 2 * leapYear
var2 = 7 * stdYear + 3 * leapYear

puts "A decade has either #{var1}  or #{var2} minutes, depending on if there are two or three leap years"