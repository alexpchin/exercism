// Constructor solution

var Bob = function() {

  this.hey = function(input) {
    if (this.isSilent(input)) {
      return 'Fine. Be that way!';
    } else if (this.isShouting(input)) {
      return 'Whoa, chill out!';
    } else if (this.isQuestion(input)) {
      return 'Sure.';
    } else {
      return 'Whatever.';
    }
  },
  this.isSilent = function(input) {
    return /^\s*$/.test(input);
  },
  this.isQuestion = function(input) {
    return /\?$/.test(input);
  },
  this.isShouting = function(input) {
    return input === input.toUpperCase() && /[A-Z]/.test(input);
  }
};

module.exports = Bob;