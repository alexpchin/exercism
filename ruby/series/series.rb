class Series

  attr_reader :numbers

  def initialize(n)
    @numbers = n.chars.map {|l| l.to_i}
  end

  def slices(n)
    raise ArgumentError if n > numbers.length
    numbers.each_with_index.map do |l, i| numbers[i...(i+n)] 
      end.map { |x| x if x.length == n }.compact
  end

end