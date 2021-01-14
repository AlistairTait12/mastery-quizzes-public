# Write a program that adds together all the integers from `1` to
# `250` (inclusive) and `puts`es the total.

total = []

for i in (1..250)
  total.push(i)
end

puts total.sum