# frozen_string_literal: true

module Solution
  class ThreeOfAKind # :nodoc:
    include Hand

    def compare_to(other)
      group_of_3 = rank_by_size(3)
      other_group_of_3 = other.rank_by_size(3)
      if group_of_3 == other_group_of_3
        return extra_cards <=> other.extra_cards
      end
      group_of_3 <=> other.group_of_3
    end

    def extra_cards
      ranks.reject { |rank| rank == rank_by_size(3) }
    end

    def match?
      three_of_a_kind?
    end
  end
end
