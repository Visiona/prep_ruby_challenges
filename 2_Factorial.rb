=begin
Write a method factorial which takes a number and 
returns the product of every number up to the current number multiplied together.
=end

def factorial(num)
  count=1
  num.downto(1) {|x| count*=x}
  count
end

puts factorial(5)