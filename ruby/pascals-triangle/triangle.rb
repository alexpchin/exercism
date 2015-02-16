# _|0|1|2|3|4|5|6|7|8
# 0|1
# 1|1 1
# 2|1 2 1
# 3|1 3 3 1 
# 4|1 4 6 4 1
# 5|1 5 10 10 5 1
# 6|1 6 15 20 15 6 1
# 7|1 7 21 35 35 21 7 1
# 8|1 8 28 56 70 56 28 8 1



class Triangle

  attr_reader :num_rows

  def initialize(num_rows)
    @num_rows = num_rows 
  end

  def rows
    num_rows.times do |row_num|
      holder = []
      row_num.times do |ticker|
        holder << row_num.cr(ticker)
      end
    end
  end

  # private
  # def total_num_elements
  #   num_rows.downto(1).reduce { |sum, n| sum + n }
  # end

  # def less_than_five_rows
  #   0.upto(num_rows-1).map do |row|

  #     11**row.to_s.chars.map(&:to_i)
  #   end
  # end

  # def fact(n)
  #   (1..n).reduce(:*)
  # end

  # binomial theorem, n choose k
  # def binomial(n,k)
  #   return 1 if n-k <= 0
  #   return 1 if k <= 0
  #   fact(n) / ( fact(k) * fact( n - k ) )
  # end

  # def triangle(nth_line)
  #   (0..nth_line).map { |e| binomial(nth_line, e) }
  # end

  # class Integer
  #   def factorial
  #     (1..self).inject(1) { |fac, i| fac*i }
  #   end

  #   def cr(r)
  #     factorial/(r.factorial*(self-r).factorial)
  #   end
  # end

end