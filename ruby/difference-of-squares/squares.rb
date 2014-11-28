class Squares

  attr_reader :sum_of_squares, :square_of_sums, :difference

  def initialize(number)
    @number         = number
    @sum_of_squares = sum_of_squares
    @square_of_sums = squares_of_sums
    @difference     = difference
  end

  def sum_of_squares
    (1..@number).reduce { |s, i| s += i**2 }
  end

  def squares_of_sums
    (1..@number).reduce(:+)**2
  end

  def difference
    (@sum_of_squares - @square_of_sums).abs
  end

end