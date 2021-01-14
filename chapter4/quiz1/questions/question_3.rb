# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

a = 0
b = 1
counter = 1

while counter <= 10
  puts a # display a
  puts b # display b
  a += b # update a to a plus b
  b += a 
  counter += 1
end

# ALTERNATIVE ANSWER, USING AN ARRAY
# sequence = [0, 1]

# i = 1
# while i < 19
#   sequence.push(sequence[i - 1] + sequence[i])
#   i += 1
# end

# puts sequence