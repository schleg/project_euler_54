# frozen_string_literal: true

module Solution
  class StraightFlush # :nodoc:
    include Hand

    def compare_to(other)
      ranks.max <=> other.ranks.max
    end

    def match?
      straight_flush?
    end
  end
end
