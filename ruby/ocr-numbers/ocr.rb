class OCR

  NUMBERS_TRANSPOSED = [
    [" _",  "", " _", " _",  "",  " _", " _", " _"," _", " _" ],
    ["| |"," |"," _|"," _|","|_|","|_", "|_", " |","|_|","|_|"],
    ["|_|"," |","|_", " _|", " |"," _|","|_|"," |","|_|"," _|"]
  ]

  def initialize(text)
    @text = text
  end

  def convert
    p " "
    p to_lines
    p split_on_double_pipes
    p split_on_triple_spaces
    p "*****************************************"
    
    # NUMBERS_TRANSPOSED.map do |line|
    #   split_on_triple_spaces.map do |char_part|
    #     p char_part
    #     line.index(char_part)
    #   end
    # end
  end

  private
  def to_lines
    @text = @text.split(/\n+/)
  end

  # "  ||  " => "  |", "|  "
  def split_on_double_pipes
    @text = @text.map do |line| 
      line.gsub("||", "|\n|").split(/\n+/)
    end.flatten
  end

  # "   |" => "  ", " |"
  def split_on_triple_spaces
    @text = @text.map do |line| 
      line.gsub("\s\s\s\s", "\s\s*\s\s").split(/\*/)
    end.flatten
  end

end

# NUMBERS_TRANSPOSED = [
#   ["\s\_",  "",      "\s\_",  "\s\_",  "",      "\s\_",  "\s\_",  "\s\_",  "\s\_",  "\s\_"  ],
#   ["\|\s\|","\s\s\|","\s\_\|","\s\_\|","\|\_\|","\|\_",  "\|\_",  "\s\s\|","\|\_\|","\|\_\|"],
#   ["\|\_\|","\s\s\|","\|\_",  "\s\_\|","\s\s\|","\s\_\|","\|\_\|","\s\s\|","\|\_\|","\s\_\|"]
# ]

# NUMBERS = [
#   ["9", "\s\_\n\|\_\|\n\s\_\|\n"],
#   ["8", "\s\_\n\|\_\|\n\|\_\|\n"],
#   ["7", "\s\_\n\s\s\|\n\s\s\|\n"],
#   ["6", "\s\_\n\|\_\n\|\_\|\n"],
#   ["5", "\s\_\n\|\_\n\s\_\|\n"],
#   ["4", "\n\|\_\|\n\s\s\|\n"],
#   ["3", "\s\_\n\s\_\|\n\s\_\|\n"],
#   ["2", "\s\_\n\s\_\|\n\|\_\n"],
#   ["1", "\n\s\s\|\n\s\s\|\n"],
#   ["0", "\s\_\n\|\s\|\n\|\_\|\n"],
# ]

# NUMBERS_TRANSPOSED = [
#   ["\s\_\n",  "\n",      "\s\_\n",  "\s\_\n",  "\n",      "\s\_\n",  "\s\_\n",  "\s\_\n",  "\s\_\n",  "\s\_\n"  ],
#   ["\|\s\|\n","\s\s\|\n","\s\_\|\n","\s\_\|\n","\|\_\|\n","\|\_\n",  "\|\_\n",  "\s\s\|\n","\|\_\|\n","\|\_\|\n"],
#   ["\|\_\|\n","\s\s\|\n","\|\_\n",  "\s\_\|\n","\s\s\|\n","\s\_\|\n","\|\_\|\n","\s\s\|\n","\|\_\|\n","\s\_\|\n"]
# ]

# line.split(/[\s\s]\s+/)
# line.split(/[\s\s]\s+/)
# line.scan(/[^\s\s]*/)
# line.split(/(?<=\s\s\s)/)

# @text = @text.map do |line| 
#   line.gsub("\s\s", "\s\n\s").split(/\n+/)
# end

# private
# def to_lines
#   @text.lines
# end

# def convert
#   p " "
#   to_lines.map do |char_part_in_line|
#     # a = char_part_in_line.split("\n").map { |char_part| char_part.gsub("\s\s", "\s") }
#     a = char_part_in_line.map { |char_part| char_part.gsub("\s\s", "\s") }
#     p a.inspect
#     NUMBERS_TRANSPOSED.index(a)
#   end
# end

# conversion = @text.dup
# @conversion = ""
# NUMBERS.each do |pair|
#   if conversion.include?(pair[1])
#     conversion.gsub!(pair[1], "") 
#     @conversion << pair[0]
#   end
# end
# @conversion

# @result = []
# NUMBERS_TRANSPOSED.each do |line|
#   to_lines.each do |char_part_in_line|
#     line.map.with_index do |char_part, index|
#       @result << index if char_part_in_line.gsub(/\n|\s/, "") == char_part.gsub(/\n|\s/, "")
#     end
#   end
# end
# @result

# p [char_part_in_line.gsub(/\n|\s/, ""), char_part.gsub(/\n|\s/, "")]