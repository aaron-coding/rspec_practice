def my_transpose(array)
  new_ary = []
  array.each_with_index do |thing, i|
    row = []
    thing.each_index do |j|
      row << array[j][i]
    end
    new_ary << row
  end
  new_ary
end
  