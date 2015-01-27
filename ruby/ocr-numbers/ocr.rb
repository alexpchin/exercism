class OCR

  def initialize(text)
    @text = text
  end

  def convert
    NUMBERS.each.with_index.reduce("") do |sum, (value, index)|
      @text == value ? sum << index.to_s : sum
    end  
  end

  NUMBERS = [
    " _\n| |\n|_|\n",
    "\n  |\n  |\n",
    " _\n _|\n|_\n",
    " _\n _|\n _|\n",
    "\n|_|\n  |\n",
    " _\n|_\n _|\n",
    " _\n|_\n|_|\n",
    " _\n  |\n  |\n",
    " _\n|_|\n|_|\n",
    " _\n|_|\n _|\n",
    "\n| |\n| |\n"
  ]

  DIGITS = [
     [" _",   "  ",  " _ ", " _ ", "   ", " _ ", " _ ", " _ ", " _ ", " _ "],
     ["| |",  "  |", " _|", " _|", "|_|", "|_ ", "|_ ", "  |", "|_|", "|_|"],
     ["|_|\n","  |", "|_ ", " _|", "  |", " _|", "|_|", "  |", "|_|", " _|"]
   ]

end