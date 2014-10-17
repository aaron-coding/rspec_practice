class Array
  
  def two_sum
    index_array = []
    (0...self.length - 1).each do |i|
      ((i + 1)...self.length).each do |j|
        index_array << [i, j] if self[i] + self[j] == 0
      end
    end
    index_array
  end
  
end