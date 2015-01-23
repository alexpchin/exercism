class Matrix

  attr_reader :rows, :columns

  def initialize(string)
    @numbers  = string.gsub('\n', ' ').split(' ').map(&:to_i)
    @matrix   = matrix_builder
    @rows     = row_builder
    @columns  = column_builder
  end

  private
  def find_factors(&block)
    count = @numbers.count
    (2).upto(count/2).each do |a|
      b = count/a
      return block.call(a,b) if is_matrix?(a,b)
    end
  end

  def is_matrix?(a, b)
    a > b && (a * b) == @numbers.count
  end

  def matrix_builder
    find_factors do |a,b|
      @numbers.each_slice(a).map { |row| row }
    end
  end

  def row_builder
    @matrix
  end

  def column_builder
    @matrix.map.with_index { |row,i| @matrix.map { |row| row[i] } }
    # @numbers.each_slice(@num_row).map { |row| row }
  end

end