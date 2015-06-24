// Alternative solution

var Bob = function() {

  this.hey = function(input) {
    if (isSilent(input)) {
      return 'Fine. Be that way!';
    } else if (isShouting(input)) {
      return 'Whoa, chill out!';
    } else if (isQuestion(input)) {
      return 'Sure.';
    } else {
      return 'Whatever.';
    }
  }

  function isSilent(input) {
    return /^\s*$/.test(input);
  }

  function isQuestion(input) {
    return /\?$/.test(input);
  }

  function isShouting(input) {
    return input === input.toUpperCase() && /[A-Z]/.test(input);
  }
};

module.exports = Bob;