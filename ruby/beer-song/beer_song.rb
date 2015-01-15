class BeerSong

  attr_reader :song

  def initialize
    @song = String.new
  end

  def verse(n)
    SONG.reverse[n]
  end

  def verses(upper, lower)
    (upper).downto(lower).map { |n| "#{verse(n)}\n" }.join
  end

  def sing 
    verses(TOTAL_NUMBER_OF_BOTTLES, 0)
  end

  private
  def self.create_song
    (TOTAL_NUMBER_OF_BOTTLES).downto(0).map do |n|
      if n > 0
        "#{pluralize_bottle(n)}#{STANDARD_VERSE[1]},\s#{pluralize_bottle(n)}#{STANDARD_VERSE[2]}\s#{pluralize_one(n)}#{STANDARD_VERSE[4]}\s#{pluralize_bottle(n-1)}#{STANDARD_VERSE[1]}.\n"
      else 
        "#{pluralize_bottle(n).capitalize}#{STANDARD_VERSE[1]},\s#{pluralize_bottle(n)}#{STANDARD_VERSE[6]}"
      end
    end
  end

  def self.pluralize_bottle(n)
    n > 0 ? "#{n}\s" + (n > 1 ? "bottles" : "bottle") : "no more bottles"
  end

  def self.pluralize_one(n)
    n > 1 ? "one" : "it"
  end

  TOTAL_NUMBER_OF_BOTTLES = 99

  STANDARD_VERSE = {
    1 => "\sof beer on the wall",
    2 => "\sof beer.\nTake",
    4 => "\sdown and pass it around,",
    3 => "No more",
    5 => "\sno more\s",
    6 => "\sof beer.\nGo to the store and buy some more, #{TOTAL_NUMBER_OF_BOTTLES} bottles of beer on the wall.\n"
  }

  SONG = self.create_song


end