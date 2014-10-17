require 'my_transpose'

describe "#mytranspose" do
  it "should transpose a 3x3 matrix" do
    expect(my_transpose([[0, 1, 2], 
    [3, 4, 5], [6, 7, 8]])).to eq([[0, 3, 6], [1, 4, 7], 
    [2, 5, 8]])
    
  end
  
  it "should transpose a 2x2 matrix" do
    expect(my_transpose([[0, 1], [3, 4]])).to eq([[0,3], [1,4]])
  end
  
  it "should return itself if empty" do
    expect(my_transpose([])).to eq([])
  end

  
end 