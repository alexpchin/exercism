class Hamming
  def self.compute(dna1, dna2)
    to_a(dna1).zip(to_a(dna2)).map do |comparison|
      comparison.include?(nil) ? nil : comparison.uniq.count - 1
    end.compact.inject(:+)
  end

  def self.to_a(string)
    string.split(//)
  end

end