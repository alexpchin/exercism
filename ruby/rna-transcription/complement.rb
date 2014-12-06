class Complement

  [:of_rna, :of_dna].each do |v|
    define_singleton_method v.to_sym do |x|
      x.chars.map { |y| COMPLEMENTS[v][y] }.reduce(:+)
    end
  end

  private

  COMPLEMENTS = {
    of_dna: {
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    },
    of_rna: {
      "C" => "G",
      "G" => "C",
      "A" => "T",
      "U" => "A"
    },
  }

end

def self.of_dna(x)
  x.chars.map { |y| COMPLEMENTS[y] }.reduce(:+)
end

def self.of_rna(x)
  x.chars.map { |y| COMPLEMENTS.invert[y] }.reduce(:+)
end


# class Complement

#   [:of_rna, :of_dna].each do |v|
#     define_singleton_method v.to_sym do |x|
#         @x = x
#         a_method(Proc.new{ |y| v == :of_rna ? COMPLEMENTS.send(:key, y) : COMPLEMENTS.send(:fetch, y.to_sym)})
#       end
#   end

#   def self.a_method(da_block)
#     @x.split(//).map { |y| da_block.call(y).to_s }.reduce(:+)
#   end
  
#   private

#   COMPLEMENTS = {
#     :G => "C",
#     :C => "G",
#     :T => "A",
#     :A => "U"
#   }

# end