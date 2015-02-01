class Array
  def safe_transpose
    result = []
    max_size = self.max { |a,b| a.size <=> b.size }.size
    max_size.times do |i|
      result[i] = Array.new(self.first.size)
      self.each_with_index { |r,j| result[i][j] = r[i] }
    end
    result
  end
end

class OCR

  NUMBERS = {
    :" _\n| |\n|_|\n" => "0",
    :"\n  |\n  |\n"   => "1",
    :" _\n _|\n|_\n"  => "2",
    :" _\n _|\n _|\n" => "3",
    :"\n|_|\n  |\n"   => "4",
    :" _\n|_\n _|\n"  => "5",
    :" _\n|_\n|_|\n"  => "6",
    :" _\n  |\n  |\n" => "7",
    :" _\n|_|\n|_|\n" => "8",
    :" _\n|_|\n _|\n" => "9"
  }

  NUMBERS.default = "?"

  attr_reader :text

  def initialize(text)
    # @text = clean(text)
    @text =  text
  end

  def convert
    NUMBERS[text.to_sym]

    # digits.map do |digit|
    #   NUMBERS[digit.to_sym]
    # end.join
  end

  private

  def lines
    text.split("\n")
  end

  def three_characters
    # lines.map do |line|
    #   # line.scan(/.../) 
    #   # line.scan(/.{3,}/)
    # end
    lines
  end

  def digits
    three_characters.safe_transpose.map do |character|
      character.join("\n")
    end
  end

  def clean(text)
    # if text.length > 15
    #   text.split(/\n         \n/).join("   \n , \n   \n   ")
    # else
    #   text
    # end
    text
  end

end