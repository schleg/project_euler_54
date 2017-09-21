# frozen_string_literal: true

module Solution
  class FourOfAKind # :nodoc:
    include Hand

    def compare_to(other)
      rank_by_size(4) <=> other.rank_by_size(4)
    end

    def match?
      four_of_a_kind?
    end
  end
end
