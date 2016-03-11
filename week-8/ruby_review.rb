# Drawer Debugger

# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

  # Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents = []
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type, :clean

  # Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    puts "cleaning the #{type}"
    @clean = true
  end
end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")

silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon1 = Silverware.new("spoon")
silverware_drawer.add_item(spoon1)
silverware_drawer.view_contents
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.any? {|word| word = "spoon"}

silverware_drawer.remove_item(spoon1) #What is happening when you run this the first time?
silverware_drawer.view_contents
spoon1.eat
puts spoon1.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE





=begin
Reflection

What concepts did you review or learn in this challenge?
I reviewed objects and attributes.


What is still confusing to you about Ruby?What are you going to study to get more prepared for Phase 1?
Object methods and attributes, and how to access them, are still a bit murky. I had to bang my head on the
last few errors of this challenge for a long time to get it right. I will need to review those chapters in WGR
a few more times to make sure I can both get the concept and the syntax surrounding it right.






=end
