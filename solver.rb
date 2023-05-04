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
     word.reverse
    end
  
    def fizzbuzz(n)
      if n % 3 == 0 && n % 5 == 0
      "fizzbuzz"
    elsif n % 3 == 0
      "fizz"
    elsif n % 5 == 0
      "buzz"
    else
      n.to_s
    end
  end
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
# Add test for reverse method
describe "#reverse" do
    it "reverses the input string" do
      solver = Solver.new
      expect(solver.reverse("hello")).to eq("olleh")
    end
    
    describe "#fizzbuzz" do
  it "returns 'fizz' when the input is divisible by 3" do
    solver = Solver.new
    expect(solver.fizzbuzz(9)).to eq("fizz")
  end

  it "returns 'buzz' when the input is divisible by 5" do
    solver = Solver.new
    expect(solver.fizzbuzz(10)).to eq("buzz")
  end

  it "returns 'fizzbuzz' when the input is divisible by 3 and 5" do
    solver = Solver.new
    expect(solver.fizzbuzz(15)).to eq("fizzbuzz")
  end

  it "returns the input as a string when the input is not divisible by 3 or 5" do
    solver = Solver.new
    expect(solver.fizzbuzz(7)).to eq("7")
  end

  it "raises an ArgumentError when the input is 0 or negative" do
    solver = Solver.new
    expect { solver.fizzbuzz(-1) }.to raise_error(ArgumentError)
    expect { solver.fizzbuzz(0) }.to raise_error(ArgumentError)
  end
end
  end
