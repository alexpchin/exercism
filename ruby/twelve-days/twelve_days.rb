class TwelveDaysSong

  def initiliaze()
  end

  def verse(n)
    song = OPENING[0] + NUMBERS_TO_WORDS[(n).to_s]+ OPENING[1]
    song << (n-1).downto(0).map do |index|
      VERSES[index] 
    end.join(", ")
    song.gsub!(" and", "") if n == 1
    song
  end

  def verses(start, finish)
    start.upto(finish).map { |n| verse(n) }.join("\n") << "\n"
  end

  def sing
    verses(1, 12)
  end

  NUMBERS_TO_WORDS = {
    "1" => "first",
    "2" => "second",
    "3" => "third",
    "4" => "fourth",
    "5" => "fifth",
    "6" => "sixth",
    "7" => "seventh",
    "8" => "eighth",
    "9" => "ninth",
    "10" => "tenth",
    "11" => "eleventh",
    "12" => "twelfth"
  }

  OPENING = ["On the "," day of Christmas my true love gave to me, "]

  VERSES = [
    "and a Partridge in a Pear Tree.\n",
    "two Turtle Doves",
    "three French Hens",
    "four Calling Birds",
    "five Gold Rings",
    "six Geese-a-Laying",
    "seven Swans-a-Swimming",
    "eight Maids-a-Milking",
    "nine Ladies Dancing",
    "ten Lords-a-Leaping",
    "eleven Pipers Piping",
    "twelve Drummers Drumming",
  ]
  
end