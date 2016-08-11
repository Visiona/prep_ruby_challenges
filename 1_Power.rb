=begin
Write a method power which takes two integers (base and exponent) and returns the base raised to the power of exponent. 
Do not use Ruby’s ** operator for this!
=end

def power(base,exp)
  count=1
  exp.times {|x| count*=base}
  return count
end

puts power(3,4)