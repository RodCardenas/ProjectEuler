#Return the sum of multiples of 3 or 5 below 1000.

def multiples_of(num, limit)
  multiples = []
  1.upto(limit) do |candidate_num|
    multiples << candidate_num if candidate_num % num == 0
  end

  multiples
end

def sum_of_multiples_Of_3_and_5_upto(limit)
  sum = 0

  multiples_of_3 = multiples_of(3,limit)
  multiples_of_5 = multiples_of(5,limit)

  multiples_of_3.each do |number|
    sum += number
  end

  multiples_of_5.each do |number|
    sum += number
  end

  sum
end

def common_multiples(set1, set2)
  common_multiples = []

  set1.each do |num|
    common_multiples << num if set2.include?(num)
  end

  common_multiples
end

def simple_sum_of_multiples_Of_3_and_5_upto(limit)
  sum = 0
  n = 0

  1.upto(limit) do |candidate_num|
    if (candidate_num % 5 == 0) || (candidate_num % 3 == 0)
      n = candidate_num
    else
      n = 0
    end
    sum += n
    p "candidate_num = #{candidate_num}, n = #{n}, sum = #{sum}"
  end
  sum
end
puts sum_of_multiples_Of_3_and_5_upto(999)
puts simple_sum_of_multiples_Of_3_and_5_upto(999)
