# Your Code Here
# Your Code Here
# def my_own_map (array)
# new_array= []
#   index = 0
#   while index < array.length do
#     yield
#     index += 1
#   end
#   return new_array  
# end

# my_own_map (array) do
#   |x| new_array.push(array[index] * -1 )
# end


def map (array)
  new_array= []
  index = 0
  while index < array.length do
    new_array.push(yield (array[index]))
    index += 1
  end
   new_array  
end


def reduce (source_array, starting_point=nil)
  
  puts "****"source_array"****"
  if starting_point
   sum = starting_point
   index = 0
  else
    sum = source_array[0]
    index = 1
  end
  while index < source_array.length do
    sum = (yield(sum,source_array[index]))
    index += 1
  end
 sum
end













# def reduce (source_array, starting_point=nil)
# new_total = 0 
#   index = 0
#   while index < source_array.length do
#     new_total += (yield(source_array[index]))
#     index += 1
#   end
# new_total
# end
