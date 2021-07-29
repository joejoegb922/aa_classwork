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
    describe "#two_sum" do 
        [-1, 0, 2, -2, 1].two_sum
    end
end

