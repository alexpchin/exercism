class Complement

  def self.of_dna(dna)
    dna.tr('ACGT', 'UGCA')
  end

  def self.of_rna(rna)
    rna.tr('UGCA', 'ACGT')
  end

end