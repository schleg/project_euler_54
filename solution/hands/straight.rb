# frozen_string_literal: true

module Solution
  class Straight # :nodoc:
    include Hand

    def compare_to(other)
      ranks.max <=> other.ranks.max
    end

    def match?
      straight?
    end
  end
end
