require 'two_sum'

describe Array do
  subject(:frank) {[-1, 0, 2, -2, 1]}
  
   it "will return single set of indices of 2 nums that sum to zero" do
     expect([-6, 6, 13].two_sum).to eq([[0, 1]])
   end
  
  it "will not return false positive of zero adding itself" do
    expect(frank.two_sum).not_to eq([[0, 4], [1,1], [2, 3]])
  end
  
  it "will return an empty array if no two nums sum to zero" do
    expect([1, 2, 3].two_sum).to eq([])
  end
  
  it "will return a normal sorted array " do
    expect([5, -5, 4, -4, 10, 20].two_sum).to eq([[0, 1], [2, 3]])
  end
    
end