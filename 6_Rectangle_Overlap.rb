=begin
Write a method overlap which takes two rectangles defined by the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap. You can assume all coordinates are positive integers.
=end

def overlap(arr1, arr2)
  answer=nil
#coordinates of one rectangle can be positioned away from the second rectangle, but still the other two corners may cause overlapping. We need to reveal two other corners to check if they overlap
arr1.push([arr1[0][0],arr1[1][1]])
arr1.push([arr1[0][1],arr1[1][0]])
  arr1.each do |x1,y1|
    if x1> arr2[0][0] && x1<arr2[1][0]
     answer = true
      if y1>arr2[0][1] && y1<arr2[1][1]
        break
      end
    else
      answer=false
    end
  end
  answer
end

puts overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )
puts overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )

#puts overlap( [ [3,3],[6,6] ], [ [2,4],[4,8] ] )


