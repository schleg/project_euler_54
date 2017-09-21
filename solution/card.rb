# frozen_string_literal: true

module Solution # :nodoc:
  class Card # :nodoc:
    attr_reader :rank, :suit, :value
    RANKS = {
      '2' => 2,
      '3' => 3,
      '4' => 4,
      '5' => 5,
      '6' => 6,
      '7' => 7,
      '8' => 8,
      '9' => 9,
      'T' => 10,
      'J' => 11,
      'Q' => 12,
      'K' => 13,
      'A' => 14
    }.freeze

    SUITS = {
      'C' => :club,
      'D' => :diamond,
      'H' => :heart,
      'S' => :spade
    }.freeze

    def initialize(card)
      @value = card
      @rank = RANKS[card[0]]
      @suit = SUITS[card[1]]
    end
  end
end
