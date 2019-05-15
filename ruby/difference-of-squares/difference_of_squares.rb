# difference between the square of the sum and the sum of the squares
class Squares
  def initialize(number)
    @range = (1..number)
  end

  def square_of_sum
    range.sum**2
  end

  def sum_of_squares
    range.sum { |num| num**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  attr_reader :range
end

module BookKeeping
  VERSION = 4
end
