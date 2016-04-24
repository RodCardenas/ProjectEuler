# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
require "byebug"
#Get primes and then search for largest prime that is a factor
def largest_prime_factor_of_not_enough_memory(num)
  primes = primes_upto(num / 2)
  largest_prime_factor = 1

  primes.each do |prime|
    if num % prime == 0
      largest_prime_factor = prime
    end
  end

  largest_prime_factor
end

def primes_upto(l)
  primes = [1]
  nums = []

  2.upto(l) do |n|
    nums << n
  end

  i = 0
  while i < nums.size
    primes << nums[i]

    j = i + 1
    while j < nums.size
      if nums[j] % nums[i] == 0
        nums = nums - [nums[j]]
      end

      j += 1
    end

    i += 1
  end

  primes
end

#Because of memory restrctions...
#Get factors first, then check which is the largest prime

def factors_of(num)
  factors = []

  1.upto(num) do |n|
    factors << n if num % n == 0
  end

  factors
end

def largest_prime_factor_of(num)
  largest_prime_factor = 1

  num.downto(1) do |n|
    if (num % n == 0) && (prime?(n))
      largest_prime_factor = n
      break
    end
  end

  largest_prime_factor
end

def prime?(num)
  p "Checking if #{num} is prime..."

  if num % 2 == 0 || num % 3 == 0 || num % 5 == 0
    return false
  end

  factors = []

  1.upto(num) do |n|
    factors << n if num % n == 0
    if factors.size > 2 then return false end
  end

  return true
end

def largest_prime_factor_of_large_number(num)
  largest_prime_factor = 1
  numerator = num

  2.upto(num) do |divisor|
    if numerator == divisor then break end
    while numerator % divisor == 0
      numerator = numerator / divisor
      largest_prime_factor = divisor
    end
  end

  largest_prime_factor = numerator
end

p largest_prime_factor_of_large_number(600851475143)
