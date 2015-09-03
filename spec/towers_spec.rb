require 'rspec'
require 'towers'


describe Towers do
  subject(:new_game) { Towers.new }
  subject(:custom_game) { Towers.new(stacks) }
  let(:stacks) { [[4,3,2,1],[],[]] }
  let(:default_stack) { [[3,2,1],[],[]] }

  describe "game initialization" do
    context "when stack is not passed in" do
      it "initializes with default stacks" do
        expect(new_game.stack).to eq(default_stack)
      end
    end

    context "when stack is passed in" do
      it "initializes with passed in stack" do
        expect(custom_game.stack).to eq(stacks)
      end
    end
  end

  describe "#move" do
    context "moves a piece to an empty stack" do
      it "moves it" do
        new_game.move(0,1)
        expect(new_game.stack).to eq( [[3,2], [1], []] )
      end
    end

    context "should not let you move a bigger piece onto a smaller piece" do
      it "should raise an error" do
        new_game.move(0,1)
        expect { new_game.move(0,1) }.to raise_error("Can't do that")
      end
    end

    context "moves a smaller piece onto a bigger piece" do
      it "moves it" do
        new_game.move(0,1)
        new_game.move(1,0)
        expect(new_game.stack).to eq(default_stack)
      end
    end

    context "should not let you move from an empty stack" do
      it "should raise an error" do
        expect { new_game.move(2,1) }.to raise_error("Can't do that")
      end
    end
  end
end
