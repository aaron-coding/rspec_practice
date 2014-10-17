require 'remove_dup'
describe Array do
#  subject(:repeated_array) { Array.new }

  describe "Array" do
    
    it "removes duplicates" do
      expect([1,5,6,1,2,5].my_uniq).to eq([1,5,6,2])     
    end
    
    it "will return original array if no dups" do
      expect([1,2,3].my_uniq).to eq([1,2,3])
    end
    
    it "does not add elements" do
      expect([1,2,3].my_uniq.count).to eq(3)
    end
    
  end
  
end