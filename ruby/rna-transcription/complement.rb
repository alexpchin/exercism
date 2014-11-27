class Complement

  def self.of_dna(x)
    str = ""
    x.split(//).each { |y| str += COMPLEMENTS[y] }
    str
  end

  def self.of_rna(x)
    str = ""
    x.split(//).map { |y| str += COMPLEMENTS.key(y) }
    str
  end

  private

  COMPLEMENTS = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

end