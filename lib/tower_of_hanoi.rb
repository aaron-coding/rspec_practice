class TowerOfHanoi
  
  attr_accessor :towers
  
  def initialize 
    @towers = [[3, 2, 1], [], []]
  end
  
  def get_move
    puts "Choose a from-tower a to-tower." 
    input = gets.chomp
    move(input) 
  end
  
  def move(input)
    from_tower, to_tower = input.split(",").map(&:to_i)
    if towers[to_tower].last.nil? || towers[from_tower].last < towers[to_tower].last
      towers[to_tower] << towers[from_tower].pop 
    else
      raise RuntimeError
    end
  end
  
  def won?
    if @towers[0].empty? && (@towers[1] == [3, 2, 1] ||  @towers[2] == [3, 2, 1])
      true
    else
      false
    end
  end
  
end