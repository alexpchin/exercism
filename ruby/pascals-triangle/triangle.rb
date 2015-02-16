class Triangle

  attr_reader :num_rows

  def initialize(num_rows)
    @num_rows = num_rows 
  end

  def rows
    num_rows.times.reduce([]) do |triangle, _|
      triangle << build_row(triangle[-1])
    end
  end

  private
  def build_row(previous_row)
    previous_row ? next_row(previous_row) : first_row
  end

  def first_row
    [1]
  end

  def next_row(previous_row)
    [1] + previous_row.each_cons(2).map { |a, b| a + b } + [1]
  end

end