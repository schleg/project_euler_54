# frozen_string_literal: true

module Solution
  class HighCard # :nodoc:
    include Hand

    def compare_to(other)
      ranks <=> other.ranks
    end

    def match?
      true
    end
  end
end
