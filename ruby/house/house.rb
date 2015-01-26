class House

  def self.recite
    number_of_verses = VERBS_AND_OBJECTS.keys.count
    @song = ""

    0.upto(number_of_verses-1) do |verse|
      self.this(verse)

      (verse-1).downto(0) do |verse|
        self.that(verse)
      end
      
      @song << "\n"
    end
    
    @song.strip << "\n"
  end

  private
  def self.this(verse)
    keys = VERBS_AND_OBJECTS.keys
    @song << "This is the #{VERBS_AND_OBJECTS[keys[verse]]}"
    @song << "\n"
  end

  def self.that(verse)
    keys   = VERBS_AND_OBJECTS.keys
    @song << "that #{keys[verse].to_s.gsub('_', ' ')} the #{VERBS_AND_OBJECTS[keys[verse]]}"
    @song << "\n"
  end

  VERBS_AND_OBJECTS = {
    lay_in: "house that Jack built.",
    ate: "malt",
    killed: "rat",
    worried: "cat",
    tossed: "dog",
    milked: "cow with the crumpled horn",
    kissed: "maiden all forlorn",
    married: "man all tattered and torn",
    woke: "priest all shaven and shorn",
    kept: "rooster that crowed in the morn",
    belonged_to: "farmer sowing his corn",
    null: "horse and the hound and the horn"
  }

end

# This is the house that Jack built.

# This is the malt
# that lay in the house that Jack built.

# This is the rat
# that ate the malt
# that lay in the house that Jack built.

# This is the cat
# that killed the rat
# that ate the malt
# that lay in the house that Jack built.

# This is the dog
# that worried the cat
# that killed the rat
# that ate the malt
# that lay in the house that Jack built.

# This is the cow with the crumpled horn
# that tossed the dog
# that worried the cat
# that killed the rat
# that ate the malt
# that lay in the house that Jack built.

# This is the maiden all forlorn
# that milked the cow with the crumpled horn
# that tossed the dog
# that worried the cat
# that killed the rat
# that ate the malt
# that lay in the house that Jack built.

# This is the man all tattered and torn
# that kissed the maiden all forlorn
# that milked the cow with the crumpled horn
# that tossed the dog
# that worried the cat
# that killed the rat
# that ate the malt
# that lay in the house that Jack built.

# This is the priest all shaven and shorn
# that married the man all tattered and torn
# that kissed the maiden all forlorn
# that milked the cow with the crumpled horn
# that tossed the dog
# that worried the cat
# that killed the rat
# that ate the malt
# that lay in the house that Jack built.

# This is the rooster that crowed in the morn
# that woke the priest all shaven and shorn
# that married the man all tattered and torn
# that kissed the maiden all forlorn
# that milked the cow with the crumpled horn
# that tossed the dog
# that worried the cat
# that killed the rat
# that ate the malt
# that lay in the house that Jack built.

# This is the farmer sowing his corn
# that kept the rooster that crowed in the morn
# that woke the priest all shaven and shorn
# that married the man all tattered and torn
# that kissed the maiden all forlorn
# that milked the cow with the crumpled horn
# that tossed the dog
# that worried the cat
# that killed the rat
# that ate the malt
# that lay in the house that Jack built.

# This is the horse and the hound and the horn
# that belonged to the farmer sowing his corn
# that kept the rooster that crowed in the morn
# that woke the priest all shaven and shorn
# that married the man all tattered and torn
# that kissed the maiden all forlorn
# that milked the cow with the crumpled horn
# that tossed the dog
# that worried the cat
# that killed the rat
# that ate the malt
# that lay in the house that Jack built.