require 'my_inject'

describe "My_Inject" do
  
  context 'addition'
  
  it "sums the values in an array" do
  	test_array = [3,6,9,2]
    expect(test_array.inject {|acc, n| acc + n}).to eq 20
  	expect(test_array.my_inject {|acc, n| acc + n}).to eq 20 
  end

  it "sums the values in an array from a starting number" do
  	test2_array = [5,1,3,9,7]
    expect(test2_array.inject(15) {|acc, n| acc + n}).to eq 40
  	expect(test2_array.my_inject(15) {|acc, n| acc + n}).to eq 40
  end

  it "multiplies the values in an array" do
  	test3_array = [2,4,1]
    expect(test3_array.inject {|acc, n| acc * n}).to eq 8
  	expect(test3_array.my_inject {|acc, n| acc * n}).to eq 8
  end

  it "multiplies the values in an array together with a starting number" do
    test3_array = [2,3]
    expect(test3_array.inject(2) {|acc, n| acc * n}).to eq 12
    expect(test3_array.my_inject(2) {|acc, n| acc * n}).to eq 12
  end

end