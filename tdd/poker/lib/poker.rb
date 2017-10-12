

class Deck
NUMBER = [2,3,4,5,6,7,8,9,10,11,12,13,14]
  VALUE = [:Two, :Three, :Four, :Five, :Six, :Seven, :Eight, :Nine, :Ten, :Jack, :Queen, :King, :Ace]
  # SUIT = ['♠', '♥', '♣', '♦'].reverse
  SUIT = ['Diamond', 'Club', 'Heart', 'Spade']

  def initialize
    @deck = card_creater

    # i = 0
    # while i < VALUE.length
    #   4.times do |el|
    #     @deck << Card.new(VALUE[i], NUMBER[i], SUIT[el], @deck)
    #   end
    #   i += 1
    # end

  end

  # def shuffledeck
  #   deck = Array.new(52)
  #   card_creater(deck)
  # end

  def card_creater
    i = 0
    deck = []
    while i < VALUE.length
      4.times do |el|
        deck << Card.new(VALUE[i], NUMBER[i], SUIT[el], @deck)
      end
      i += 1

    end
    deck
  end


  def shuffledeck
    @deck.shuffle
  end

  def draw
    @deck.shift
  end



end


class Card
  def initialize(value, number, suit, holder)
    @value = value
    @number = number
    @suit = suit
    @holder = holder
  end
end
