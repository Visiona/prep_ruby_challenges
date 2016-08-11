=begin

Write a method uniques which takes an array of items and returns the array without any duplicates. Don’t use Ruby’s uniq method!
=end

def uniques(array)
  new_array=[]
  array.each do |x|
    unless new_array.include?x
      new_array.push(x)
    end
  end
  new_array
end

puts uniques([1,5,"frog", 2,1,3,"frog",3,5])