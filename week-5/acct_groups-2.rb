#Pseudocode
#create or import a data structure with student names, probably best if I can initiate a hash with the student numbers as keys and a default value of nil.
#determine group size (4 or 5 per group), based on size of "leftover" group. It can't be 1 or 2. (handle with modulo)
#if total % 5 does not equal 1 or 2, 5 is group size, if not, 4 is group size and last person or two will be added to last group or two, all groups will have 4 or 5.
#Iterate over the group, assign a group to each person. The output of this will probably be a populated hash with k = student ; v = group
#print output
#MVP looks like: Group 1: Person 1 - Person 5, Group 2: Person 6 - 10, etc
#Fancier releases could involve randomizing assignment, and assigning names to groups. Another fancier release would be to import the names from the page. Lastly, we could use some sort of logic to ensure that each group has at least one person from each DBC location.


def assign_to_groups(number_of_students)
  if not ((number_of_students  % 5)  == 1 || (number_of_students  % 5)  == 2)
    group_size = 5
    easy = true
  else
    group_size = 4
     stragglers = number_of_students % group_size
     if stragglers == (0||3)
       easy = true
     else
       easy = false
     end
  end
  my_student_array = (1..number_of_students).to_a.shuffle
  group_assignments = Hash.new
  if easy == true
    assign(my_student_array, 0, group_assignments)
  else #easy = false
    assign(my_student_array, stragglers, group_assignments)
    while my_student_array.length > 0
      group_number -=1
      x = my_student_array.shift
      group_assignments[x] = group_number
    end
  end
  return group_assignments
end

def assign(array, target, hash1)
counter = 0
    group_number = 1
    while array.length >target
      x = array.shift
      hash1[x] = group_number
      counter +=1
      if counter == group_size
        group_number +=1
        counter = 0
      end
    end
end



puts assign_to_groups(57)

# To store past output
# past_output = []
# past_output.push(assign_to_groups(57))
# past_output.push(assign_to_groups(57))
# past_output.push(assign_to_groups(57))

# for x in past_output
#   puts x
#   puts
# end


#to add complexity:
#original solution will generate the same list every time, this is corrected with array.shuffle
#I added a system for storing (and printing) past results when new ones are generated using an array of hashes
#I also figured out how to import the list from the "people" page and scrub it until useful.





# What was the most interesting and most difficult part of this challenge?
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Was your approach for automating this task a good solution? What could have made it even better?
# What data structure did you decide to store the accountability groups in and why?
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?



