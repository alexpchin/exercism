class Matrix

  attr_reader :rows, :columns

  def initialize(string)
    @rows    = string.lines.map { |row| row.split.map(&:to_i) }
    @columns = @rows.transpose
    @saddle_points = []
  end

  def parse string
    string.lines.map do |row|
      row.split.map &:to_i
    end
  end

  def saddle_points
    p rows
    p saddle_point_values
    saddle_point_values.map  { |s| @rows.index(s) }
  end

  def max_in_row
    @rows.map(&:max)
  end

  def min_in_column
    @columns.map(&:min)
  end

  def saddle_point_values
    p "max: #{max_in_row}"
    p "min: #{min_in_column}"
    max_in_row & min_in_column
  end

end