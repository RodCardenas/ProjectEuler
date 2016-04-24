def sum_of_primes_upto(n)
  prime = 3
  sum = 5
  ending_prime_check = 0

  if n % 2 == 0
    ending_prime_check = n -1
  else
    ending_prime_check = n
  end

  while !prime?(ending_prime_check)
    ending_prime_check -= 2
  end

  p "The last prime that will be added is #{ending_prime_check}..."

  begin
    sum += next_prime(prime)
  end until prime == ending_prime_check

  sum
end

def next_prime(prime)
  nxt_prime = prime + 2
  while !prime?(nxt_prime)
    nxt_prime += 2
  end

  nxt_prime
end

def prime?(num)
  if num % 3 == 0 || num % 5 == 0
    return false
  end

  7.upto(Math.sqrt(num)) do |n|
    if num % n == 0 then return false end
  end

  return true
end

p sum_of_primes_upto(1999999)
