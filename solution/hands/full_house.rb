# frozen_string_literal: true

module Solution
  class FullHouse # :nodoc:
    include Hand

    def compare_to(other)
      group_of_3 = rank_by_size(3)
      other_group_of_3 = other.rank_by_size(3)
      group_of_2 = rank_by_size(2)
      other_group_of_2 = other.rank_by_size(2)
      return group_of_2 <=> other_group_of_2 if group_of_3 == other_group_of_3
      group_of_3 <=> other_group_of_3
    end

    def match?
      full_house?
    end
  end
end
