class FoodChainSong

  def verse(n)
    (0...n).to_a.map { |i| 
      puts i
      know(i) 
    }.reduce(:+)
  end

  def know(n)
puts n
puts ANIMALS.keys[n].to_s
    [
      "I know an old lady who swallowed a #{ANIMALS.keys[n].to_s}.",
      ANIMALS.values[n]
    ].compact.join("\n")
  end

  # def die(animal=nil)
  #   return "" if animal.nil?
  #   "I don't know why she swallowed the #{animal}. Perhaps she'll die."
  # end

  # def swallow(hunter, prey)
  #   "She swallowed the #{hunter}" to catch the #{prey}."
  # end

  ANIMALS = {
    fly: "Perhaps she'll die.", 
    spider: "It wriggled and jiggled and tickled inside her.", 
    bird: "How absurd to swallow a bird!",
    cat: "Imagine that, to swallow a cat!",
    dog: "What a hog, to swallow a dog!",
    goat: "Just opened her throat and swallowed a goat!",
    cow: "I don't know how she swallowed a cow!",
    horse: "She's dead, of course!"
  }

  # I know an old lady who swallowed a fly.
  # I don't know why she swallowed the fly. Perhaps she'll die.

  # I know an old lady who swallowed a spider.
  # It wriggled and jiggled and tickled inside her.
  # She swallowed the spider to catch the fly.
  # I don't know why she swallowed the fly. Perhaps she'll die.

  # I know an old lady who swallowed a bird.
  # How absurd to swallow a bird!
  # She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
  # She swallowed the spider to catch the fly.
  # I don't know why she swallowed the fly. Perhaps she'll die.

  # I know an old lady who swallowed a cat.
  # Imagine that, to swallow a cat!
  # She swallowed the cat to catch the bird.
  # She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
  # She swallowed the spider to catch the fly.
  # I don't know why she swallowed the fly. Perhaps she'll die.

  # I know an old lady who swallowed a dog.
  # What a hog, to swallow a dog!
  # She swallowed the dog to catch the cat.
  # She swallowed the cat to catch the bird.
  # She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
  # She swallowed the spider to catch the fly.
  # I don't know why she swallowed the fly. Perhaps she'll die.

  # I know an old lady who swallowed a goat.
  # Just opened her throat and swallowed a goat!
  # She swallowed the goat to catch the dog.
  # She swallowed the dog to catch the cat.
  # She swallowed the cat to catch the bird.
  # She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
  # She swallowed the spider to catch the fly.
  # I don't know why she swallowed the fly. Perhaps she'll die.

  # I know an old lady who swallowed a cow.
  # I don't know how she swallowed a cow!
  # She swallowed the cow to catch the goat.
  # She swallowed the goat to catch the dog.
  # She swallowed the dog to catch the cat.
  # She swallowed the cat to catch the bird.
  # She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
  # She swallowed the spider to catch the fly.
  # I don't know why she swallowed the fly. Perhaps she'll die.

  # I know an old lady who swallowed a horse.
  # She's dead, of course!





  # SEPERATOR = "\n"

  # SONG = {
  #   v1: [
  #     know("fly"),
  #     die("fly")
  #   ],
  #   v2: [
  #     know("spider"),
  #     swallow("spider", "fly"),
  #     die("fly")
  #   ],
  #   v3: [
  #     know("bird"),
  #     "How absurd to swallow a bird!",
  #     "She swallowed the bird to catch the spider 
  #     that wriggled and jiggled and tickled inside her.",
  #     swallow("spider", "fly"),
  #     die("fly")
  #   ]
  #   v4: [
  #     know("cat"),
  #     "Imagine that, to swallow a cat!",
  #     swallow("cat", "bird"),
  #     "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
  #     swallow("spider", "fly"),
  #     die("fly")
  #   ]
  #   v5: [
  #     know("dog"),
  #     "What a hog, to swallow a dog!",
  #     swallow("dog", "cat"),
  #     swallow("cat", "bird"),
  #     "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
  #     swallow("spider", "fly"),
  #     die("fly")
  #   ]
  #   v6: [
  #     know("goat"),
  #     "Just opened her throat and swallowed a goat!",
  #     swallow("goat", "dog"),
  #     swallow("dog", "cat"),
  #     swallow("cat", "bird"),
  #     "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
  #     swallow("spider", "fly"),
  #     die("fly")
  #   ]
  #   v7: [
  #     know("cow"),
  #     "I don't know how she swallowed a cow!",
  #     swallow("cow", "goat"),
  #     swallow("goat", "dog"),
  #     swallow("dog", "cat"),
  #     swallow("cat", "bird"),
  #     "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
  #     swallow("spider", "fly"),
  #     die("fly")
  #   ]
  #   v8: [
  #     know("horse"),
  #     die
  #   ]
  # }

end