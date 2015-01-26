class OCR

  def initialize(text)
    @text = text
  end

  def convert
    NUMBERS.key(@text)
  end

  NUMBERS = {
    "0" => " _\n| |\n|_|\n",
    "1" => "\n  |\n  |\n",
    "2" => " _\n _|\n|_\n",
    "3" => " _\n _|\n _|\n",
    "4" => "\n|_|\n  |\n",
    "5" => " _\n|_\n _|\n",
    "6" => " _\n|_\n|_|\n",
    "7" => " _\n  |\n  |\n",
    "8" => " _\n|_|\n|_|\n",
    "9" => " _\n|_|\n _|\n",
    "?" => "\n| |\n| |\n"
  }

end