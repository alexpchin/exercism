class FoodChainSong

  attr_reader :song

  def initialize
    @song = String.new
  end

  def sing
    verses(1, 8)
  end

  def verses(x, y)
puts "#{(x..y).to_a}\n\n"
    verses = (x..y).to_a.map { |n| verse(n) }.join("hello")
puts verses.inspect
  verses
  end

  def verse(n)
    n -= 1
    @song << know(n)
    @song << SEPERATOR if n < 8
    swallow(n)
    @song << die(n)

puts "VERSE #{n}"
puts @song.inspect
puts "\n"

    @song
  end

  def know(n)
    [
      "I know an old lady who swallowed a #{ANIMALS.keys[n].to_s}.",
      ANIMALS.values[n]
    ].compact.join(SEPERATOR)
  end

  def swallow(n)
    return if n == 0 || n == 7
    @song << "She swallowed the #{ANIMALS.keys[n].to_s} to catch the #{ANIMALS.keys[n-1].to_s}"
    @song << " that wriggled and jiggled and tickled inside her" if ANIMALS.keys[n-1].to_s == "spider"
    @song << "." 
    @song << SEPERATOR
    swallow(n-1)
  end

  def die(n)
    return if n > 7
    "I don't know why she swallowed the #{ANIMALS.keys[0].to_s}. Perhaps she'll die.#{SEPERATOR}"
  end

  SEPERATOR = "\n"

  ANIMALS = {
    fly: nil, 
    spider: "It wriggled and jiggled and tickled inside her.", 
    bird: "How absurd to swallow a bird!",
    cat: "Imagine that, to swallow a cat!",
    dog: "What a hog, to swallow a dog!",
    goat: "Just opened her throat and swallowed a goat!",
    cow: "I don't know how she swallowed a cow!",
    horse: "She's dead, of course!"
  }

end