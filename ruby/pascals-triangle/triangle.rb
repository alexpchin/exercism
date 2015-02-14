class Triangle

  def initialize(num_rows)

  end

  private
  def total_num_elements
    num_rows.downto(1).reduce("") do |sum, n|
      sum += n
    end
  end

end