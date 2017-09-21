# frozen_string_literal: true

module Solution
  class TwoPair # :nodoc:
    include Hand

    def compare_to(other)
      if high_pair != other.high_pair
        high_pair <=> other.high_pair
      elsif low_pair != other.low_pair
        low_pair <=> other.low_pair
      else
        extra_card = rank_by_size(1)
        other_extra_card = other.rank_by_size(1)
        extra_card <=> other_extra_card
      end
    end

    def high_pair
      ranks_by_size(2).max
    end

    def low_pair
      ranks_by_size(2).min
    end

    def match?
      two_pair?
    end

    private

    def ranks_by_size
      counts_by_rank.select { |_, count| count == 2 }.keys
    end
  end
end
