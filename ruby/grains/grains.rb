# Calculate the number of grains of wheat on a chessboard given that the number
# on each sqaure doubles.
class Grains
  def self.square(position_on_board)
    raise ArgumentError if position_on_board <= 0 || position_on_board > 64

    1 << (position_on_board - 1)
  end

  def self.total
    (1..64).sum { |position_on_board| square(position_on_board) }
  end
end
