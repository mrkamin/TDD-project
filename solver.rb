# A class that provides methods to solve various problems
class Solver
  def factorial(num)
    raise ArgumentError, 'Argument must be a positive integer' if num.negative?

    result = 1
    (1..num).each do |i|
      result *= i
    end
    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    raise ArgumentError, 'Argument must be a positive integer' if num <= 0

    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
