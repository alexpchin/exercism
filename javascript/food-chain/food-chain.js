function FoodChainSong() {
  this.lyrics = {
    "fly": "I don't know why she swallowed the fly. Perhaps she'll die.",
    "spider": "It wriggled and jiggled and tickled inside her.",
    "bird": "How absurd to swallow a bird!",
    "cat": "Imagine that, to swallow a cat!",
    "dog": "What a hog, to swallow a dog!",
    "goat": "Just opened her throat and swallowed a goat!",
    "cow": "I don't know how she swallowed a cow!",
    "horse": "She's dead, of course!"
  };
}

FoodChainSong.prototype.verses = function(start, end) {
  var song = "";
  for(var i = start; i <= end; i++) {
    song += this.verse(i) + "\n";
  }
  return song;
}

FoodChainSong.prototype.verse = function(n) {
  var animal = Object.keys(this.lyrics)[n-1];
  var description = this.lyrics[animal];
  var song = "I know an old lady who swallowed a " + animal + ".\n";
  song += description + "\n";

  if (n < Object.keys(this.lyrics).length) {
    for(var i = n-1; i > 0; i-- ) {
      var previous_animal = Object.keys(this.lyrics)[i-1];
      var current_animal = Object.keys(this.lyrics)[i];
      song += "She swallowed the " +  current_animal + " to catch the " + previous_animal;
      if (previous_animal === "spider") {
        song += " that wriggled and jiggled and tickled inside her.\n";
      } else {
        song += ".\n";
      }
    }

    if (n > 1) {
      var first_animal = Object.keys(this.lyrics)[0];
      song += this.lyrics[first_animal] + "\n";
    }
    
  }
  return song;
}

module.exports = new FoodChainSong();