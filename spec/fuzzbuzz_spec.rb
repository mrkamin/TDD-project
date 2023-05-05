require_relative '../solver'
require 'rspec'

RSpec.describe Solver do
  describe '#fizzbuzz' do
    it "returns 'fizz' when the input is divisible by 3" do
      solver = Solver.new
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it "returns 'buzz' when the input is divisible by 5" do
      solver = Solver.new
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it "returns 'fizzbuzz' when the input is divisible by 3 and 5" do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the input as a string when the input is not divisible by 3 or 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(7)).to eq('7')
    end

    it 'raises an ArgumentError when the input is 0 or negative' do
      solver = Solver.new
      expect { solver.fizzbuzz(-1) }.to raise_error(ArgumentError)
      expect { solver.fizzbuzz(0) }.to raise_error(ArgumentError)
    end
  end
end
