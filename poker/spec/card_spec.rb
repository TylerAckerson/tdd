require 'rspec'
require 'card'


describe Card do
  subject(:card) {Card.new(:ace, :spades)}

  describe "Creating a new card" do
    context "suit and value passed in" do
      it "Initalizes a card with the suit and value" do
        expect(card.suit).to eq(:spades)
        expect(card.value).to eq(:ace)
        expect(card.color).to eq(:black)
      end
    end

    context "suit and value are not passed in" do
      subject(:default_card) { Card.new }
      it "creates a ace of hearts" do
        expect(default_card.suit).to eq(:hearts)
        expect(default_card.value).to eq(:ace)
        expect(default_card.color).to eq(:red)
      end
    end
  end

end
