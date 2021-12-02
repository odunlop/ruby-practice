# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

# This was part of my chapter 4 mastery quiz but realised after a better way to do it so wanted to test it

fib_num = [0, 1]

while fib_num.count < 21
  fib_num << (fib_num[-1] + fib_num[-2])
end

puts fib_num