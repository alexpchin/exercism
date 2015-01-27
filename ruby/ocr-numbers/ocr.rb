class OCR

  NUMBERS = [
    ["9", "\s\_\n\|\_\|\n\s\_\|\n"],
    ["8", "\s\_\n\|\_\|\n\|\_\|\n"],
    ["7", "\s\_\n\s\s\|\n\s\s\|\n"],
    ["6", "\s\_\n\|\_\n\|\_\|\n"],
    ["5", "\s\_\n\|\_\n\s\_\|\n"],
    ["4", "\n\|\_\|\n\s\s\|\n"],
    ["3", "\s\_\n\s\_\|\n\s\_\|\n"],
    ["2", "\s\_\n\s\_\|\n\|\_\n"],
    ["1", "\n\s\s\|\n\s\s\|\n"],
    ["0", "\s\_\n\|\s\|\n\|\_\|\n"],
  ]

  def initialize(text)
    @text = text
  end

  def convert
      text = <<-NUMBER.chomp
      _
    || |
    ||_|

      NUMBER

    conversion = @text

    NUMBERS.each do |pair|
      conversion.gsub!(pair[1].strip, pair[0])
    end 
  
    p " "
    p text.chars
    p "Text: #{@text.chars.transpose}"
    p "Conversion: #{conversion}"

    conversion
  end

end

# def glue(sum, index)
#   if index == 10
#     sum << "?"
#   else 
#     sum << index.to_s
#   end
# end

# NUMBERS.each.with_index.reduce("") do |sum, (value, index)|
#   @text == value ? glue(sum, index) : sum
# end  

# conversion.delete!("\n")
# conversion.delete!("\s")
# p NUMBERS.sort.reverse

# NUMBERS.sort.reverse_each.with_index do |value, index| 
#   conversion.gsub!(/#{Regexp.escape(value)}/, index.to_s)
# end
# conversion

# NUMBERS = [
#   "\_\|\|\|\_\|",   # 0
#   "\|\|",           # 1
#   "\_\_\|\|\_",     # 2
#   "\_\_\|\_\|",     # 3
#   "\|\_\|\|",       # 4
#   "\_\|\_\_\|",     # 5
#   "\_\|\_\|\_\|",   # 6
#   "\_\|\|",         # 7
#   "\_\|\_\|\|\_\|", # 8
#   "\_\|\_\|\_\|"    # 9
# ]

# NUMBERS = [
#   "\s\_\|\s\|\|\_\|", # 0
#   "\s\s\|\s\s\|",     # 1
#   "\s\_\s\_\|\|\_",   # 2
#   "\s\_\s\_\|\s\_\|", # 3
#   "\|\_\|\s\s\|",     # 4
#   "\s\_\|\_\s\_\|",   # 5
#   "\s\_\|\_\|\_\|",   # 6
#   "\s\_\s\s\|\s\s\|", # 7
#   "\s\_\|\_\|\|\_\|", # 8
#   "\s\_\|\_\|\s\_\|"  # 9
# ]

# NUMBERS = [
#   "\s\_\n\|\s\|\n\|\_\|\n", # 0
#   "\n\s\s\|\n\s\s\|\n",     # 1
#   "\s\_\n\s\_\|\n\|\_\n",   # 2
#   "\s\_\n\s\_\|\n\s\_\|\n", # 3
#   "\n\|\_\|\n\s\s\|\n",     # 4
#   "\s\_\n\|\_\n\s\_\|\n",   # 5
#   "\s\_\n\|\_\n\|\_\|\n",   # 6
#   "\s\_\n\s\s\|\n\s\s\|\n", # 7
#   "\s\_\n\|\_\|\n\|\_\|\n", # 8
#   "\s\_\n\|\_\|\n\s\_\|\n"  # 9
# ]