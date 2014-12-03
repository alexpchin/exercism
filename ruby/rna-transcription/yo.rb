class Complement

  def method
    @x.split(//).map { |y| yield(y) }.reduce(:+)
  end

  def self.of_dna(x)
    @x = x
    method{COMPLEMENTS[y]}
    #method(rna, x)
  end

  def self.of_rna(x)
    @x = x
    method{COMPLEMENTS.key(y)}
    # x.split(//).map { |y| COMPLEMENTS.key(y) }.reduce(:+)
    # method(dna, x)
  end

  private

  COMPLEMENTS = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

end