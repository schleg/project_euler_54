# frozen_string_literal: true

module Solution
  class Flush # :nodoc:
    include Hand

    def compare_to(other)
      ranks <=> other.ranks
    end

    def match?
      flush?
    end
  end
end
