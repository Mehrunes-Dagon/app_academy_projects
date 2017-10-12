require "tdd"
require "rspec"

describe "Tdd" do


  describe "#remove_dups" do
    let(:array) { [ 0, 2, 3, 1, 1, 2] }
    it "returns array with no duplicates" do
      expect(array.remove_dups).to eq(array.uniq)
    end
  end

  describe "Array#two_sum" do
    let(:array) { [-1, 0, 2, -2, 1] }
    it "returns index of pairs that sum to 0" do
      expect(array.two_sum).to eq.([[0, 4], [2, 3]])
    end

    it "smaller first element comes first" do
      expect(array.two_sum).to_not eq.([[2, 3],[0, 4]])
    end

    # it "then smaller second element comes first" do
    #   expect(array.two_sum).to eq.([[0, 4][0], [0, 4][1]].sort)
    # end
  end
  describe "#my_transpose" do
    let(:array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
    it "returns a tranposed array" do
      expect(array.my_transpose).to eq.([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
    it "doesnt use .transpose" do
      expect(array).to_not recieve(:transpose)
      expect(array).to recieve(:my_transpose)
      array.my_transpose
    end
  end
  describe "#stock_picker" do
    let (:array) { [5,3,9,1,3,2,4,8,7,1,2] }
    it "returns the best days to invest (buy, sell)" do
      expect(array.stock_picker).to eq([3,7])
    end
    it "doesn't return days out of assending order" do
      expect(array.stock_picker).to eq([3,7].sort)
    end
  end

end
