function Anagram(input) {

  this.input = arguments;

  this.matches = function(arrayOfTestWords) {
    var matches = [];
    for (var i = 0; testWord = arrayOfTestWords[i++];){
      if (isAnagram(testWord) && !isSameWord(testWord)) {
        matches.push(testWord);
      }
    }
    return matches;
  }

  function isAnagram(testWord) {
    return sortByChar(this.input) == sortByChar(testWord)
  }

  function sortByChar(testWord){
    return testWord.toLowerCase().split('').sort().join();
  }

  function isSameWord(testWord) {
    return this.input == testWord.toLowerCase();
  }
  
  return {
    matches: matches
  };
}

// The keyword require returns an object
// which references the value of module.exports for a given file.
if (module) {
  module.exports = Anagram;
}