=begin
Write a method combinations which takes two arrays of strings and returns an array with all of the combinations of the items in them, listing the first items first.
=end

def combinations(arr1, arr2)
  arr3=[]
  arr1.each do |x|
    arr2.each {|y| arr3.push(x+y)}
  end
  arr3
end

p combinations(["on","in","sam", "tala", "123"], ["to","rope"])
#=> [“onto”,”onrope”,”into”,”inrope”]