require 'rspec'
require 'poker'


describe "Poker" do
  describe "This is 5 card draw" do
    context "Deck" do
      subject (:deck) { Deck.new }
      context "#initialize" do
        it "Creates deck of 52 cards" do
          puts deck
          expect(deck.length).to eq(52)


        end
        it "All cards are unique" do
          deck.first != deck.last
          deck[10] != deck[12]
        end
      end
      context "#draw" do
        it "draws top card" do
          deck.draw == deck[0]
        end
      end
    end
    context "Player" do
      subject (:player) { Player.new(name
        )}
    end
    context "Card" do
    end
    context "Game" do
    end
    context "Hand" do
    end


  end
end
