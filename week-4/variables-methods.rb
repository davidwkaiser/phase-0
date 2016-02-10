print "What is your first name? "
first = gets.chomp
print "What is your middle name? "
middle = gets.chomp
print "What is your last name? "
last = gets.chomp

puts "It is truly a pleasure to meet you, #{first} #{middle} #{last}!"

print "What is your favorite number? "
fav = gets.chomp.to_i
puts "That's a great number, but #{fav + 1} is even better, because it's BIGGER!"