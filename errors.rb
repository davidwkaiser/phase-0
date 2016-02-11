# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#  line 15/16
# 6. Why did the interpreter give you this error?
# There are two control elements, def and while, but only one "end," the error occurs becuase the interpreter reaches the end of the program and never finds the "end" it's seeking

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# in `<main>': undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
# in line 35
# 5. Why did the interpreter give you this error?
# The program calls "south_park," but this has never been defined as either a variable or a method.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 50
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# in `<main>': undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# line 50
# 5. Why did the interpreter give you this error?
# the method "cartman" has never been defined, but it is called here.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 65
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_phrase': wrong number of arguments (1 for 0), from errors.rb:69:in `<main>'
# 4. Where is the error in the code?
# line 69
# 5. Why did the interpreter give you this error?
# because the method, as defined, takes 0 arguments, but in line 69, the method is called with one argument

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# line 84
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartman_says': wrong number of arguments (0 for 1), from errors.rb:88:in `<main>'
# 4. Where is the error in the code?
#line 88
# 5. Why did the interpreter give you this error?
# opposite of the previous error. The method is defined with one argument, but is called with none.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_lie': wrong number of arguments (1 for 2) (ArgumentError), from errors.rb:109:in `<main>'
# 4. Where is the error in the code?
# line 109
# 5. Why did the interpreter give you this error?
# similar to above, the method is called with the wrong number of arguments, one instead of two.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 124
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# 124
# 5. Why did the interpreter give you this error?
# because * cannot be called with a string as second argument. This would have worked if the elements were reversed

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# in `/': divided by 0
# 4. Where is the error in the code?
# line 139
# 5. Why did the interpreter give you this error?
# in line 139, as in life, you can't divide by zero.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
#in `require_relative': cannot load such file -- /Users/test/Desktop/DBC/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
# line 155
# 5. Why did the interpreter give you this error?
# this faile cannot be loaded because it is not found in the default directory


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# The first, because there was a lot of distance between where the error occured and where it was reported.
# Also, the method looked OK at first glance, it had all of the correct elements (just not enough of them)
# Of course, adding another "end" would have created an infinite loop

# How did you figure out what the issue with the error was?
# I read somewhere that if the error is called at the end of the program, it means that some piece of punctuation
# was forgotten. I started looking for the missing element and noticed it only had one "end"

# Were you able to determine why each error message happened based on the code?
#yes, most were pretty straightforward, based upon the info from the original error message.

# When you encounter errors in your future code, what process will you follow to help you debug?
# start by looking at the error message, it gives a lot of info. If that is insufficient, look at the area around
# where the error was called, to see if there was a bug. Also, look at objects that may refer or call
# the area where the error is. If all else fails, type the error message into google and see what Stack Overflow
# has to say about it.
