# frozen_string_literal: true

module Solution
  class HandBuilder # :nodoc:
    class << self
      def build(round)
        round_cards = round.split
        first_hand = hand(cards(round_cards.first(5)))
        second_hand = hand(cards(round_cards.last(5)))
        [first_hand, second_hand]
      end

      def hand(cards)
        HANDS_BY_RANK.
          map { |h| h.new(cards) }.
          detect(&:match?)
      end

      def cards(hand)
        hand.map { |card| Card.new(card) }
      end
    end
  end
end
