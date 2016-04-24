# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

def nth_prime(n)
  primes = [2, 3]

  begin
    primes << next_prime(primes)
  end until primes.length == (n - 1)

  primes.last
end

def next_prime(primes)
  nxt_prime = primes[-1] + 2
  while !prime?(nxt_prime)
    nxt_prime += 2
  end

  nxt_prime
end

def prime?(num)
  if num % 3 == 0 || num % 5 == 0
    return false
  end

  factors = []

  1.upto(num) do |n|
    factors << n if num % n == 0
    if factors.size > 2 then return false end
  end

  return true
end

p nth_prime(10001)
