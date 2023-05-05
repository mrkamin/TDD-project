require_relative '../solver'
require 'rspec'

RSpec.describe Solver do
  describe '#reverse' do
    it 'reverses the input string' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end
end
