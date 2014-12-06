class Complement

  [:of_rna, :of_dna].each do |method_name|
    define_singleton_method method_name do |x|
      x.chars.map { |y| Complement.const_get(method_name.to_s.upcase)[y] }.reduce(:+)
    end
  end

  private

  OF_DNA = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }
  OF_RNA = OF_DNA.invert

end