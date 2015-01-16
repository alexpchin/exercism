class Crypto
  attr_reader :sentence, :size

  def initialize(sentence)
    @sentence = sentence
    @size     = Math.sqrt(normalize_plaintext.length).ceil
  end

  def normalize_plaintext
    sentence.scan(/\w/).each { |x| x.downcase! }.join
  end

  def chunk_array
    normalize_plaintext.chars.each_slice(size).to_a
  end

  def plaintext_segments
    chunk_array.map(&:join)
  end

  def ciphertext
    # chunk_array.safely_transpose.map(&:join).join(" ")
    # chunk_array.reduce(&:zip).map(&:flatten).join
    # chunk_array.reduce(&:zip).map(&:flatten)
    # plaintext_segments[-2] == plaintext_segments[-1]
    if perfect_square?
      chunk_array.transpose
    else
      # chunk_array.reduce(&:zip).map(&:flatten)
      # chunk_array.map { |x| x.size }
      # chunk_array.max_size
      # chunk_array[0..-2].transpose + [chunk_array[-1]].transpose
      array_with_nil_values
      # chunk_array.reduce(&:zip).map(&:flatten)
    end
  end

  def normalize_ciphertext
    ciphertext
  end

  def max_size
    chunk_array.group_by(&:size).max.first
  end

  def array_with_nil_values
    chunk_array.each { |array| (max_size-array.size).times { array << nil } if array.size < max_size }
  end

  def safely_transpose
    chunk_array.reduce(&:zip).map(&:flatten)
  end

  def perfect_square?
    plaintext_segments[-2] == plaintext_segments[-1]
  end

end