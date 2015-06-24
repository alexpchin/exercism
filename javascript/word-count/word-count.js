var words = function(input) { 
  var a = input.replace(/[\n|\t]/, " ").split(" ");
  var counts = {};
  for (var i = 0, len = a.length; i < len; i++) {
    var word = a[i].trim();
    if (word !== "") {
      counts.hasOwnProperty(word) ? counts[word] += 1 : counts[word] = 1;
    }
  }
  return counts;
}

module.exports = words;