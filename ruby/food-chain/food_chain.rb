require "pry"

class FoodChainSong

  attr_reader :song

  def verse
    ANIMALS.each_with_index do |animal, index|
      puts "There was an old lady who swallowed a #{animal}."
     
      unique_phrase = ANIMALS[animal.to_sym]
      case unique_phrase[-1]
      when "S" then unique_phrase[-1] = "she swallowed a #{animal}."
      when "T" then unique_phrase[-1] = "to swallow a #{animal}!"
      end
      puts unique_phrase
      break if animal == :horse
     
      index.downto(1) do |i|
        puts "She swallowed the #{animals[i]} to catch the #{animals[i-1]}."
        case animals[i-1]
        when :spider, :fly then puts descriptions[animals[i-1]]
        end
      end
     
      print "Perhaps she'll die.\n\n"
    end
  end

#   def initialize
#     # @song = String.new
#   end

#   def sing
#     verses(1, 8)
#   end

#   def verses(x, y)
#     (x..y).to_a.map { |n| verse(n) }.join(SEPERATOR)
#   end

#   def verse(n)
#     n -= 1
#     song = ""
#     song << know(n)
#     song << SEPERATOR  if n > 0
#     song << unique(n)  if n > 0
#     song << SEPERATOR  if n < 7
# puts "**#{swallow(n, song).inspect}"
#     song << swallow(n, song) if n > 0
#     song << die(n)     if n < 7
#     song << SEPERATOR
#     song
#   end

#   def know(n)
#     "I know an old lady who swallowed a #{ANIMALS.keys[n].to_s}."
#   end

#   def unique(n)
#     ANIMALS.values[n]
#   end

#   def swallow(n, song)
#     return "" if n == 0 || n == 7
#     song << "She swallowed the #{ANIMALS.keys[n].to_s} to catch the #{ANIMALS.keys[n-1].to_s}"
#     song << " that wriggled and jiggled and tickled inside her" if (n-1) == 1
#     song << "." 
#     song << SEPERATOR
#     swallow(n-1, song)
#   end

#   def die(n)
#     "I don't know why she swallowed the #{ANIMALS.keys[0].to_s}. Perhaps she'll die."
#   end

  private
  SEPERATOR = "\n"

  ANIMALS = {
    fly: nil, 
    spider: "It wriggled and jiggled and tickled inside her.", 
    bird: "How absurd T",
    cat: "Imagine that, T",
    dog: "What a hog, T",
    goat: "Just opened her throat and swallowed a goat!",
    cow: "I don't know how S",
    horse: "She's dead, of course!"
  }

end