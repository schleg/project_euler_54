# frozen_string_literal: true

module Solution
  class OnePair # :nodoc:
    include Hand

    def compare_to(other)
      group_of_2 = rank_by_size(2)
      other_group_of_2 = other.rank_by_size(2)
      if group_of_2 != other_group_of_2
        group_of_2 <=> other_group_of_2
      else
        extra_cards <=> other.extra_cards
      end
    end

    def pair_rank
      counts_by_rank.find { |_, count| count == 2 }.first
    end

    def extra_cards
      ranks.reject { |rank| rank == rank_by_size(2) }
    end

    def match?
      one_pair?
    end
  end
end
