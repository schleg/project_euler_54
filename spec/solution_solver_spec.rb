# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Solution::Solver do
  subject { Solution::Solver.solve }

  it 'returns the correct statistics' do
    expect(subject.players[0][:wins]).to eq(376)
    expect(subject.players[1][:wins]).to eq(624)
  end
end
