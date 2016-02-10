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

**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**
pretty nicely, in my opinion, the math systems are pretty clean.

**What is the difference between integers and floats?**
discussed above. integers are like "whole numbers," although they can be negative, too. Floats are decimals.

**What is the difference between integer and float division?**
integer division may return a remainder (i.e. 11 / 3 = 3), float division will return a decimal (11 / 3 = 3.6666..)

**What are strings? Why and when would you use them?**
Strings are text. Anytime one wishes to use text, like right now, to record or manipulate letters and numbers (as text, not as integers or floats)

**What are local variables? Why and when would you use them?**
a local variable "points to" a value, like x = 2. Using a variable is like using a pronoun, it's much easier to say "he" than Rufus Xavier Sasparilla. local variables start with a lowercase letter or underscore, and are not set to nil before assingment. local variables can be found in the scope of a loop, class, function, etc.

**How was this challenge? Did you get a good review of some of the basics?**
Pretty easy. Nice to get the review on string methods, and to take rspec for a test drive and see how it works, even if I don't really know what's under the hood yet.



https://github.com/davidwkaiser/phase-0/blob/master/week-4/defining-variables.rb
https://github.com/davidwkaiser/phase-0/blob/master/week-4/simple-string.rb
https://github.com/davidwkaiser/phase-0/blob/master/week-4/basic-math.rb

