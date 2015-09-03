require 'rspec'
require 'tdd'


describe Array do
  describe "#my_uniq" do
    subject(:no_dup_array) { [1, 2, 3] }

    context "array is empty" do
      subject(:empty_array) { [] }
      it "returns an empty array" do
        expect(empty_array.my_uniq).to eq(empty_array)
      end
    end

    context "has no duplicates" do
      it "returns the same array without duplicates" do
        expect(no_dup_array.my_uniq).to eq(no_dup_array)
      end
    end

    context "array has one duplicated element" do
      subject(:one_dup_array) { [1, 2, 2, 3] }
        it "returns the array with the duplicate eliminated" do
          expect(one_dup_array.my_uniq).to eq(no_dup_array)
        end
    end

    context "array has multiple duplicated elements" do
      subject(:multi_dup_array) { [1, 2, 2, 3, 3] }
      it "returns the array without duplicates" do
        expect(multi_dup_array.my_uniq).to eq(no_dup_array)
      end
    end

  end

  describe "#two_sum" do

    context "no sets of two_sum matches" do
      subject(:no_matches) {[1,2,3]}
      it "returns an empty array" do
        expect(no_matches.two_sum).to eq([])
      end
    end

    context "one set of two_sum matches" do
      subject(:one_match) {[-1, 0 , 1, 2]}
      it "returns a nested array of the matching indices" do
        expect(one_match.two_sum).to eq([[0,2]])
      end
    end

    context "multiple sets of two_sum matches" do
      subject(:multi_match) {[-1, 2, 3, 1,-2]}
      it "returns a nested array of all the matching indices" do
          expect(multi_match.two_sum).to eq([[0,3], [1,4]])
      end
    end
  end

  describe "#my_transpose" do
    subject(:row) {[[1,2,3]]}
    subject(:col) {[[1],[2],[3]]}
    subject(:square) {[[1,2], [3,4]]}
    subject(:rectangle) {[[1,2,3], [4,5,6]]}

    context "one row" do
      it "return a nested array equal to the length of the first element" do
        expect(row.my_transpose).to eq(col)
      end
    end

    context "one column" do
      it "transposes an array of one column" do
        expect(col.my_transpose).to eq(row)
      end
    end

    context "multidemensional square array" do
      it "transposes the square array" do
        expect(square.my_transpose).to eq([[1,3],[2,4]])
      end
    end

    context "multidemensional rectangular array" do
      it "transposes the rectangular array" do
        expect(rectangle.my_transpose).to eq([[1,4],[2,5],[3,6]])
      end
    end
  end

  describe "#stock_picker" do
    subject(:two_item) { [-10, 100] }
    context "there is a two-item array" do
      it "returns the best buy/sell days" do
        expect(two_item.stock_picker).to eq([0, 1])
      end
    end

    context "best days are at the beginning and end of the array" do
      subject(:beggining_end) { [-10, 5, 15, -5, 20] }
      it "returns the best buy/sell days" do
        expect(beggining_end.stock_picker).to eq([0, 4])
      end
    end

    context "when best buy/ sell days are in the middle of the array" do
      subject(:middle) { [5, 15, -10, 5, 20, 0] }
      it "returns the best buy/sell days" do
        expect(middle.stock_picker).to eq([2, 4])
      end
    end
  end

end
