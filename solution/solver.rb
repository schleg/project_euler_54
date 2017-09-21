# frozen_string_literal: true

module Solution
  Statistics = Struct.new(:players)
  class Solver # :nodoc:
    def self.solve
      file = File.new(File.join('data', 'p054_poker.txt'), 'r')
      rounds = file.each_line.map do |round|
        Solution::HandBuilder.build(round)
      end
      Statistics.new([{
        wins: rounds.select { |r| r[0] > r[1] }.count,
        loses: rounds.select { |r| r[0] < r[1] }.count,
        straight_flush: rounds.select { |r| r[0].is_a?(Solution::StraightFlush) }.count,
        four_of_a_kind: rounds.select { |r| r[0].is_a?(Solution::FourOfAKind) }.count,
        full_house: rounds.select { |r| r[0].is_a?(Solution::FullHouse) }.count,
        flush: rounds.select { |r| r[0].is_a?(Solution::Flush) }.count,
        straight: rounds.select { |r| r[0].is_a?(Solution::Straight) }.count,
        three_of_a_kind: rounds.select { |r| r[0].is_a?(Solution::ThreeOfAKind) }.count,
        two_pair: rounds.select { |r| r[0].is_a?(Solution::TwoPair) }.count,
        one_pair: rounds.select { |r| r[0].is_a?(Solution::OnePair) }.count,
        high_card: rounds.select { |r| r[0].is_a?(Solution::HighCard) }.count
      }, {
        wins: rounds.select { |r| r[1] > r[0] }.count,
        loses: rounds.select { |r| r[1] < r[0] }.count,
        straight_flush: rounds.select { |r| r[1].is_a?(Solution::StraightFlush) }.count,
        four_of_a_kind: rounds.select { |r| r[1].is_a?(Solution::FourOfAKind) }.count,
        full_house: rounds.select { |r| r[1].is_a?(Solution::FullHouse) }.count,
        flush: rounds.select { |r| r[1].is_a?(Solution::Flush) }.count,
        straight: rounds.select { |r| r[1].is_a?(Solution::Straight) }.count,
        three_of_a_kind: rounds.select { |r| r[1].is_a?(Solution::ThreeOfAKind) }.count,
        two_pair: rounds.select { |r| r[1].is_a?(Solution::TwoPair) }.count,
        one_pair: rounds.select { |r| r[1].is_a?(Solution::OnePair) }.count,
        high_card: rounds.select { |r| r[1].is_a?(Solution::HighCard) }.count
      }])
    end
  end
end
