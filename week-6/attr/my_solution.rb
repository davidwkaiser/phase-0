#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Greetings
  attr_reader :addressee
  def initialize
    @addressee = NameData.new("Dave")
  end

  def hi
    puts "Hello #{addressee.name}, great to see you today!"
  end

end

greet = Greetings.new
greet.hi


=begin
# Reflection
What are these methods doing?
-first the instance is initialized with one set of data
-we have methods to change values for the instance
-the change methods are called, changing the values (name, occupation, etc)
-the print method is invoked.

How are they modifying or returning the value of instance variables?
they are changing the value through assignment syntax
what I am curious about, and can't seem to figure out, is why the first set of assignments
is in quotes and the second isn't. I think it is because the first set is printed out with p,
and the second with "puts"


What changed between the last release and this release?
we have attr_reader calling :age

What was replaced?
this method:
  # def what_is_age
  #   @age
  # end

Is this code simpler than the last?
yes, definitely. the method calling machinery is simpler

What changed between the last release and this release?
we added attr_write for age, also the method used to change the age of the instance

What was replaced?
  this method:
  # def change_my_age=(new_age)
  #   @age = new_age
  # end


Is this code simpler than the last?
definitely

What is a reader method?
one that allows us to access the value of the attribute. like this one
  # def what_is_age
  #   @age
  # end


What is a writer method?
one that allows us to chnage the value of the attribute. like this one
  # def change_my_age=(new_age)
  #   @age = new_age
  # end


What do the attr methods do for you?
  they allow us to replace the methods noted above and create new methods for that class and instance.

Should you always use an accessor to cover your bases? Why or why not?
Not necessarily, we may not want the data to be vulnerable to destructive methods from the outside (in the case of write).
Similarly, we may not want to allow access to read the values from outside the class / instance

What is confusing to you about these methods?
I mostly get how it works. I'll forget it tomorrow, then I'llremember. it just takes practice.

=end