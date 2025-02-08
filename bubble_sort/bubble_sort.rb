def bubble_sort(array)
  array_length = array.length
  counter = 0
  while counter < array_length
    array.each_with_index do |element, index|
      if index != array_length - 1 # if not last element
        if element > array[index + 1]
          temp = array[index + 1]
          array[index + 1] = element
          array[index] = temp
        end
      end
    end  
    counter += 1
  end
  array
end


p bubble_sort([4,3,78,2,0,2])