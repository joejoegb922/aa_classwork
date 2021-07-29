require "tdd"

describe "TDD_1" do
    describe "uniq" do 
        it "should accept an array without error" do 
            uniq([1,2,2,3,3,4,5]) 
        end
        it "should return input array without duplicates" do 
            expect(uniq([1,2,2,3,3,4,5])).to eq([1,2,3,4,5])
        end
    end
end

describe "Array" do
    describe "#two_sum" do         #[-1, 0, 2, -2, 1].two_sum 
      it "should accept an array without raising error" do 
        [1,0,0,-1,0,4].two_sum
      end
      it "should return an array of index's that sum to 0" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
      end
      it "should not return ann array of the same index" do 
        expect([-1, 0, 2, -2, 1].two_sum).not_to eq([[0, 4],[1,1],[2, 3]])
      end
      it "should return indexes in order" do 
        expect([-1, 0, 2, -2, 1].two_sum).not_to eq([[2,3],[0,4]])
      end
    end
end

