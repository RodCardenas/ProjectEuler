# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

a = nil
b = nil
c = nil
trips = []

catch (:done) do
  1.upto(249) do |as|
    as.upto(1000 - as) do |bs|
      bs.upto(1000) do |cs|
        if (as**2 + bs**2) == cs**2 && (as + bs + cs == 1000)
          trips << [as,bs,cs]
          p "#{as} * #{bs} * #{cs} = #{as * bs * cs}"
          throw :done
        end
      end
    end
  end
end
# trips.each do |trip|
#   if trip[0] + trip[1] + trip[2] == 1000
#     p "#{trip[0]} * #{trip[1]} * #{trip[2]} = #{trip[0] * trip[1] * trip[2]}"
#   end
# end
