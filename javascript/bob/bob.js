// Prototype solution

var isSilent = function(input){
 return (input.length<1);
};

var isShouting = function(input) {
 return input.toUpperCase() === input && input.match(/[a-zA-Z]/);
};

var isQuestion = function(input){
 return !isSilent(input) ? input.charAt(input.length-1)==='?' : false;
};

var Bob = module.exports = function() {};

Bob.prototype.hey = function(input) {
 input = (typeof input === 'string' ? input.trim() : '');

 if(isSilent(input)){
   return 'Fine. Be that way!';
 }
 if (isShouting(input)){
   return 'Whoa, chill out!';
 }
 if (isQuestion(input)){
   return 'Sure.';
 }
 return 'Whatever.';

};