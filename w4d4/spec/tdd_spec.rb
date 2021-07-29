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

    describe "my_transpose" do 
      it "should not use built-in Array#transpose" do 
        array = [[7, 6, 5, 4],[6, 5, 3, 4],[7, 6, 5, 4],[6, 5, 3, 4]]
        expect(array).to_not receive(:transpose)
        my_transpose(array)
      end 

      it "should accept a 2D array without raising error" do
        array = [[7, 6, 5, 4],[6, 5, 3, 4],[7, 6, 5, 4],[6, 5, 3, 4]]
        expect(my_transpose(array))
      end

      it "should flip the rows and colums [[1,2,3],[4,5,6],[6,7,8]] => [[1,4,6],[2,5,7],[3,6,8]]" do 
        array = [[1,2,3],[4,5,6],[6,7,8]]
        expect(my_transpose(array)).to eq([[1,4,6],[2,5,7],[3,6,8]])
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

