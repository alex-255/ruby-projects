# Algorithm 2
# compare results of subtracting
# linear
#
def stock_picker(array)
  index_of_day_low = 0
  biggest_difference = 0
  result = []

  while index_of_day_low < array.length 
    array.each_with_index do |value, index|
      if ( value > array[index_of_day_low] &&
        (value - array[index_of_day_low]) > biggest_difference && 
        index_of_day_low < index )

        biggest_difference = value - array[index_of_day_low]
        result = [index_of_day_low, index]
      end
    end
    index_of_day_low += 1
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])


# 
#
# Algorithm 1 (WRONG WAY)
# to hash
# sort
# compare two biggest differ
# WRONG WAY
# 
# def array_to_hash(array)
#   index = -1
#   hash = array.to_h do |item| 
#     index += 1
#     [index, item]
#   end
#   hash
# end

# hash = array_to_hash([17,3,6,9,15,8,6,1,10])
# sorted_hash_aka_array = hash.sort_by {|key, value| value }
# # p sorted_hash_aka_array.to_h
# counter = 0
# contr_counter = -1
# loop do
#   if sorted_hash_aka_array[counter][0] < sorted_hash_aka_array[contr_counter][0]
#     [sorted_hash_aka_array[counter][0], sorted_hash_aka_array[contr_counter][0]]
#     break
#   else
#     counter += 1
#   end  
# end
