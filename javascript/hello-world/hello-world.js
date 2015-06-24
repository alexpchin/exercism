var HelloWorld = function() {};

HelloWorld.prototype.hello = function(input) {
  if (input) {
    return "Hello, " + input + "!";
  } else {
    return "Hello, world!";
  }
};

module.exports = HelloWorld;
