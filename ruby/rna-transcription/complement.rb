class Complement

  def self.of_dna(dna)
    dna.tr('ACGT', 'UGCA')
  end

  def self.of_rna(rna)
    rna.tr('UGCA', 'ACGT')
  end

  # [:of_rna, :of_dna].each do |m|
  #   define_singleton_method m do |x|
  #     x.chars.map { |y| Complement.const_get(m.to_s.upcase)[y] }.reduce(:+)
  #   end
  # end

  private

  # OF_DNA = {
  #   "G" => "C",
  #   "C" => "G",
  #   "T" => "A",
  #   "A" => "U"
  # }
  # OF_RNA = OF_DNA.invert

end