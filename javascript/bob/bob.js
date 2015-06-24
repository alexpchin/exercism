var Bob = function() {};

Bob.prototype.responses = {
  nothing: "Fine. Be that way!",
  yell: "Whoa, chill out!",
  question: "Sure.",
  other: "Whatever."
}

Bob.prototype.hey = function(input) {
  this.input = input.replace(/[0-9\t ]/, '')
  if (this.nothing()) {
    return this.responses.nothing;
  } else if (this.yell()) {
    return this.responses.yell;
  } else if (this.question()) {
    return this.responses.question;
  } else {
    return this.responses.other; 
  }
}

Bob.prototype.nothing = function() {
  return this.input === null || this.input === "" || this.input .trim() == 0;
}

Bob.prototype.yell = function() {
  var letters = this.letters();
  if (letters) {
    return letters == letters.toUpperCase();
  }
}

Bob.prototype.question = function() {
  return this.input.slice(-1) == "?";
}

Bob.prototype.letters = function() {
  var letters = this.input.match(/[a-zA-ZäöüÄÖÜß]+/);
  if (letters != null) {
    return letters[0];
  }
}

module.exports = Bob;