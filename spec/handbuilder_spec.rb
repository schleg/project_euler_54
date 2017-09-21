# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Solution::HandBuilder do

  describe '#build' do
    it 'returns one pair (5) and one pair (8)' do
      player_1_hand = '5H 5C 6S 7S KD'
      player_2_hand = '2C 3S 8S 8D TD'
      hands = Solution::HandBuilder.build(player_1_hand + ' ' + player_2_hand)
      expect(hands[0]).to be_a(Solution::OnePair)
      expect(hands[1]).to be_a(Solution::OnePair)
    end

    it 'returns highest card (Ace) and highest card (Queen)' do
      player_1_hand = '5D 8C 9S JS AC'
      player_2_hand = '2C 5C 7D 8S QH'
      hands = Solution::HandBuilder.build(player_1_hand + ' ' + player_2_hand)
      expect(hands[0]).to be_a(Solution::HighCard)
      expect(hands[1]).to be_a(Solution::HighCard)
    end

    it 'returns three-of-a-kind (Aces) and flush (Diamonds)' do
      player_1_hand = '2D 9C AS AH AC'
      player_2_hand = '3D 6D 7D TD QD'
      hands = Solution::HandBuilder.build(player_1_hand + ' ' + player_2_hand)
      expect(hands[0]).to be_a(Solution::ThreeOfAKind)
      expect(hands[1]).to be_a(Solution::Flush)
    end

    it 'returns one pair (Queens) and one pair (Queens)' do
      player_1_hand = '4D 6S 9H QH QC'
      player_2_hand = '3D 6D 7H QD QS'
      hands = Solution::HandBuilder.build(player_1_hand + ' ' + player_2_hand)
      expect(hands[0]).to be_a(Solution::OnePair)
      expect(hands[1]).to be_a(Solution::OnePair)
    end

    it 'returns one full house and one full house' do
      player_1_hand = '2H 2D 4C 4D 4S'
      player_2_hand = '3C 3D 3S 9S 9D'
      hands = Solution::HandBuilder.build(player_1_hand + ' ' + player_2_hand)
      expect(hands[0]).to be_a(Solution::FullHouse)
      expect(hands[1]).to be_a(Solution::FullHouse)
    end
  end
end
