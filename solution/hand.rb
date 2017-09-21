# frozen_string_literal: true

module Solution
  module Hand # :nodoc:
    include Comparable

    def initialize(cards)
      @cards = cards
    end

    def <=>(other)
      ranking_comparison = compare_rankings(other)
      return ranking_comparison unless ranking_comparison.zero?
      compare_to(other)
    end

    def ranking
      HANDS_BY_RANK.reverse.index(self.class)
    end

    def compare_rankings(other)
      ranking <=> other.ranking
    end

    def suits
      @cards.collect(&:suit)
    end

    def ranks
      @cards.collect(&:rank).sort.reverse
    end

    def match?
      false
    end

    def rank_by_size(size)
      counts_by_rank.find { |_, count| count == size }.first
    end

    private

    def counts_by_rank
      ranks.reduce(Hash.new(0)) { |counts, rank| counts[rank] += 1; counts }
    end

    def flush?
      suits.uniq.length == 1
    end

    def four_of_a_kind?
      counts_by_rank.values.any? { |count| count == 4 }
    end

    def full_house?
      counts_by_rank.values.include?(3) && counts_by_rank.values.include?(2)
    end

    def high_card?
      false
    end

    def one_pair?
      counts_by_rank.values.any? { |count| count == 2 }
    end

    def straight?
      return false unless ranks.uniq.count == 5
      ranks.first - ranks.last == 4
    end

    def straight_flush?
      straight? && flush?
    end

    def three_of_a_kind?
      counts_by_rank.values.any? { |count| count == 3 }
    end

    def two_pair?
      counts_by_rank.values.select { |count| count == 2 }.count == 2
    end
  end
end
