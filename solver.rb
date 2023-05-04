require 'RSpec/autorun'

class Solver
    def factorial(n)
        if n < 0
          raise ArgumentError, "Argument must be a positive integer"
        end
    
        result = 1
        for i in 1..n
          result *= i
        end
        result
      end
  
    def reverse(word)
      # your code here
    end
  
    def fizzbuzz(n)
      # your code here
    end
  end

  RSpec.describe Solver do
    describe '#factorial' do
      it 'returns 1 when given 0' do
        solver = Solver.new
        expect(solver.factorial(0)).to eq 1
      end
  
      it 'returns the factorial of a positive integer' do
        solver = Solver.new
        expect(solver.factorial(5)).to eq 120
      end
  
      it 'raises an exception when given a negative integer' do
        solver = Solver.new
        expect { solver.factorial(-1) }.to raise_error(ArgumentError)
      end
    end
  end
  