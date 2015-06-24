var Hamming = {
  compute: function(a, b) {
    if (a.length !== b.length) {
      throw new Error('DNA strands must be of equal length.'); 
    }
    var count = 0;
    for (var i = 0, len = a.length; i < len; i++) {
      if (a[i] !== b[i]) {
        count++
      }
    }
    return count;
  }
}

module.exports = Hamming;

// Was going to implement with this, to catch strands of different length
// var array = [a.length, b.length];
// var min = Math.min.apply(null, array)