=begin
Write a method is_prime? which takes in a number and returns true if it is a prime number.
=end

def is_prime?(num)
  answer=true
  2.upto(num-1) do |x|
    if num%x == 0
      answer=false
      break
    end
  end
  answer
end

puts is_prime?(7)
puts is_prime?(14)
