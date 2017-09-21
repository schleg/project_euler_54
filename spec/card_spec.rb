# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Solution::Card do
  it 'gets the correct rank and suit' do
    expect(Solution::Card.new('5C').rank).to be(5)
    expect(Solution::Card.new('5C').suit).to be(:club)
    expect(Solution::Card.new('6D').rank).to be(6)
    expect(Solution::Card.new('6D').suit).to be(:diamond)
    expect(Solution::Card.new('7H').rank).to be(7)
    expect(Solution::Card.new('7H').suit).to be(:heart)
    expect(Solution::Card.new('8S').rank).to be(8)
    expect(Solution::Card.new('8S').suit).to be(:spade)
  end
end
