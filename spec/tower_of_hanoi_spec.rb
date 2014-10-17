require 'tower_of_hanoi'

describe TowerOfHanoi do
  subject(:game) { TowerOfHanoi.new }
  
  let(:player) {double("player")}
  
  describe '#towers' do
    it "has a towers method that returns an array" do
      expect(game.towers).to be_instance_of(Array)
    end
    
    it "should have three towers" do
      expect(game.towers.count).to eq(3)
    end
    
    
    it "should 3 disks on tower 0 and 2 empty towers on initialize" do
      expect(game.towers).to eq([[3, 2, 1], [], []])
    end  
  
    describe "#move" do
      it "gets move from player and moves to anotehr tower" do
        
        allow(player).to receive(:get_move).and_return("0, 1")
        game.move(player.get_move)
        expect(game.towers[1]).to eq([1])
      end
      
      it "should not let the player to move larger disk to smaller disk." do
        allow(player).to receive(:get_move).and_return("0, 1")
        game.move(player.get_move)
        expect { game.move(player.get_move) }.to raise_error(RuntimeError)
      end
      
      it "should end game if last tower has all disks" do
        game.towers = [ [], [], [3,2,1] ]
        expect(game).to be_won
      end
      
      it "should end game if second tower has all disks" do
        game.towers = [ [], [3, 2, 1], [] ]
        expect(game).to be_won
      end
    end
  end
    
end