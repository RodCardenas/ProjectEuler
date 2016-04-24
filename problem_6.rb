# The sum of the squares of the first ten natural numbers is,
#
# 1**2 + 2**2 + ... + 10**2 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def square_of_sum_upto(limit)
  (limit*(limit + 1) / 2) ** 2
end

def sum_of_squares_upto(limit)
  sum = 0

  1.upto(limit) do |num|
    sum += num**2
  end

  sum
end

def difference_between_sum_of_squares_and_square_of_sum_upto(limit)
  n = 0
  m = 0

  p n = sum_of_squares_upto(limit)
  p m = square_of_sum_upto(limit)

  m - n
end

p difference_between_sum_of_squares_and_square_of_sum_upto(100)
