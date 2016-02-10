**What does puts do?**
"puts" causes the output to be displayed on the screen, and it moves to the next line (as opposed to "print," which does not move to a new line)

**What is an integer? What is a float?**

A float is a floating point number, and it typically represents a decimal number, such as 3.2, or 3.0, an integer does not have a decimal component, it is a multiple of 10^0power (i.e. 3 = 3 * 10^0)

**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**

Integer division is like division with a remainder, like we did in grade school: 11 divided by 3 equals 3 with a remainder of two (the remainder is expressed via % modulo). Float division does not allow remainders, it solves to the necessary decimal: 11 divided by 3 = 3.66666...

```ruby

hours = 24*365
puts "There are #{hours} in a year"

```

```ruby

stdYear = 60 * 24 * 365
leapYear = 60 * 24 * 366

var1 = 8 * stdYear + 2 * leapYear
var2 = 7 * stdYear + 3 * leapYear

puts "A decade has either #{var1}  or #{var2} minutes, depending on if there are two or three leap years"


```

