# Write a program that puts people into groups.  It should:
# * Ask the user to enter the number of groups they want to create.
# * Ask for people's names, one at a time, until the user enters `stop`.
# * Grouping strategy
#   * As an example, imagine there are three groups.
#   * First person goes in the first group.
#   * Second person goes in the second group.
#   * Third person goes in the third group.
#   * Fourth person goes in the first group.
#   * Fifth person goes in the second group.
#   * etc.
# * Ask the user for the number of a group.
# * Print the people in that group, each separated by a comma and a
#   space.  Group numbers are "1-indexed".  This means that, if the
#   user enters `1`, the first group should be printed, not the second
#   group.
# * Keep on asking the user for group numbers until the user enters
#   `stop`.
#
# * Example output
#   ```
#   Enter number of groups
#   3
#   Enter a name
#   Mary
#   Enter a name
#   Lauren
#   Enter a name
#   Awad
#   Enter a name
#   Govind
#   Enter a name
#   Isla
#   Enter a name
#   stop
#   Enter the number of a group to print out
#   1
#   Mary, Govind
#   Enter the number of a group to print out
#   2
#   Lauren, Isla
#   Enter the number of a group to print out
#   3
#   Awad
#   Enter the number of a group to print out
#   stop
#   ```
#
# * Note: You can assume the user will input an integer when asked how
#   many groups they want to create.  You can assume the user will
#   input integers for group numbers that exist when they are asked
#   for the number of a group to print out.

all_names = []
groups = []

# Setting number of groups
puts "Enter number of groups"
num_of_groups = gets.chomp.to_i
num_of_groups.times do
  groups.push(Array.new)
end

# Gathering names
while true
  break if num_of_groups === 0
  puts "Enter a name"
  name = gets.chomp
  if name === 'stop'
    break
  else
    all_names.push(name)
  end
end

# Sorting names
all_names.reverse!
while all_names.length > 0
  for i in (0..groups.length - 1)
    unless all_names.length === 0
      groups[i].push(all_names.pop)
    end
  end
end

# Asks user which group they want unless they say 'stop'
while true
  break if num_of_groups === 0
  puts "Enter the number of a group to print out"
  group = gets.chomp
  if group === 'stop'
    break
  else
    puts groups[group.to_i - 1].join(", ")
  end
end
