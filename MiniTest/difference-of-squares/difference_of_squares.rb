class Squares
  def initialize(input)
    @input = input
  end

  def square_of_sum
    sum = (1..@input).inject(:+)
    sum * sum
  end

  def sum_of_squares
    sum = (1..@input).map { |x| x*x }.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
