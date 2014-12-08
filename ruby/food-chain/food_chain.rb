require "pry"

class FoodChainSong

  def sing
    verses(1, 8)
  end

  def verses(x, y)
    (x..y).to_a.map { |n| verse(n) }.join(SEPERATOR)
  end

  def verse(x, y=x)
    x -= 1
    y -= 1
    song = ""

    Hash[Array(ANIMALS_DESCRIPTIONS)[x..y]].each_pair do |animal, phrase|
      index = ANIMALS.index(animal)
      song << "I know an old lady who swallowed a #{animal.to_s}.\n"

      phrase = DESCRIPTIONS[index]
      case phrase[-1]
      when "S" then phrase[-1] = "she swallowed a #{animal.to_s}."
      when "T" then phrase[-1] = "to swallow a #{animal.to_s}!"
      end
      song << phrase
      song << SEPERATOR if index > 0
      break if animal == :horse

      index.downto(1) do |i|
        song << "She swallowed the #{ANIMALS[i]} to catch the #{ANIMALS[i-1]}."
        song << SEPERATOR
        case ANIMALS[i-1]
        when :spider then song[-2..-1] = " that wriggled and jiggled and tickled inside her.#{SEPERATOR}"
        when :fly then song << DESCRIPTIONS[i-1]
        end
      end

      song << " Perhaps she'll die.#{SEPERATOR}"
    end

puts "#{song.inspect}"
    song
  end

  private
  SEPERATOR = "\n"

  ANIMALS_DESCRIPTIONS = {
    fly: "I don't know why she swallowed the fly.", 
    spider: "It wriggled and jiggled and tickled inside her.", 
    bird: "How absurd T",
    cat: "Imagine that, T",
    dog: "What a hog, T",
    goat: "Just opened her throat and swallowed a goat!",
    cow: "I don't know how S",
    horse: "She's dead, of course!"
  }

  ANIMALS = ANIMALS_DESCRIPTIONS.keys
  DESCRIPTIONS = ANIMALS_DESCRIPTIONS.values

end