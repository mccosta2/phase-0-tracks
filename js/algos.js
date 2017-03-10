//write a function that takes an array of words or phrases and returns the longest word or phrase in the array

// create a function that loops through array
function longest(array) {
	var word_length= {};
	for (var i = 0; i < array.length; i++) {
		word_length[array[i]] = array[i].length;
		}


// determine each word length and store it in an object with the word as key value pair
// find a way to grab the maximum value of length
//return the corresponding word / key
	var longword = "";
	var count = 0;
	for (var key in word_length) {
		if( word_length[key] > count) {
			longword = key;
			count = word_length[key];
		}
	}

	return longword	;
}


//driver
// create sample array variable
var wordlist = ["long phrase","longest phrase","longer phrase"];
console.log(longest(wordlist));

var wordlist2 = ["dog", "horse", "alligator"]
var wordlist3 = ["one", "seventeen", "twenty"]

console.log(longest(wordlist2));
console.log(longest(wordlist3));

