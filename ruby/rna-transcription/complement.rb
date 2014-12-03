class Complement

  def self.of_dna(x)
    x.split(//).map { |y| COMPLEMENTS[y] }.reduce(:+)
  end

  def self.of_rna(x)
    x.split(//).map { |y| COMPLEMENTS.key(y) }.reduce(:+)
  end

  private

  COMPLEMENTS = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

end

# class Complement

#   def self.a_method
#     @x.split(//).map { |y| yield(y).to_s }.reduce(:+)
#   end

#   def self.of_dna(x)
#     @x = x
#     a_method{ |y| COMPLEMENTS[y.to_sym]}
#   end

#   def self.of_rna(x)
#     @x = x
#     a_method{ |y| COMPLEMENTS.key(y)}
#   end

#   private

#   COMPLEMENTS = {
#     :G => "C",
#     :C => "G",
#     :T => "A",
#     :A => "U"
#   }

# end


# class Complement

#   [:of_rna, :of_dna].each do |v|
#     define_singleton_method v.to_sym do |x|
#         @x = x
#         value = v == :of_rna ? Proc.new{ |y| COMPLEMENTS.key(y)} : Proc.new{ |y| COMPLEMENTS[y.to_sym]}
#         a_method(value)
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

class Complement

  # define_singleton_method initialize do || 
  #   self.of_rna = 
  #   self.of_dna = 
  # end

  [:of_rna, :of_dna].each do |v|
    define_singleton_method v.to_sym do |x|
        @x = x
        a_method  -> (y) { v == :of_rna ? COMPLEMENTS.send(:key, y) : COMPLEMENTS.send(:fetch, y.to_sym)}
      end
  end

  def self.a_method(da_block)
    @x.split(//).map { |y| da_block.call(y).to_s }.reduce(:+)
  end
  
  private

  COMPLEMENTS = {
    :G => "C",
    :C => "G",
    :T => "A",
    :A => "U"
  }

end