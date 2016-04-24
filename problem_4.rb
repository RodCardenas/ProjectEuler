def palindrome_product
  num1 = 100
  num2 = 100
  largest_palindrome = 0
  product = 0

  while num1 < 1000
    num2 = 100
    while num2 < 1000
      product = num1 * num2
      if palindrome?(product) && product > largest_palindrome
        largest_palindrome = product
      end

      num2 += 1
    end

    num1 += 1
  end

  largest_palindrome
end

def palindrome?(num)
  str = num.to_s
  str == str.reverse ? (return true) : (return false)
end

p palindrome_product
