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


//create a function to compare key value pairs in two objects
//create function that takes in two object paramters
function comparer(obj1, obj2) {
//run through first object and compare to second
	for (var key in obj1) {
		if (obj1[key] == obj2[key]) {
			return true;
		}
	}
	for (var key in obj2) {
		if (obj2[key] == obj1[key]) {
			return true;
		} else {
			return false;
		}

	}
//run through second object and compare to first
}


//function for random arrays
function wordgen(int) {
	var word_array = []
	for (var i = 0; i < int; i++) {
		var random_num = Math.floor((Math.random()*10)+1);
		var word_base = "asdfghjklz";
		var word = "";
		for (var j = 0; j < random_num; j++) {
			word += word_base[j];
		}
		word_array.push(word);
	}
	console.log(word_array)
	return word_array;
}
//create function that takes in int
//create loop int times
//each time add a word that is 1 to 10 letters long
//create random number 1 to 10
//to array add word that is based off
//the word will be based off "asdfghjklz"



//driver for longest
// create sample array variable
var wordlist = ["long phrase","longest phrase","longer phrase"];
console.log(longest(wordlist));

var wordlist2 = ["dog", "horse", "alligator"]
var wordlist3 = ["one", "seventeen", "twenty"]

console.log(longest(wordlist2));
console.log(longest(wordlist3));

//driver for comparer
//should return true
console.log(comparer({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
//should return false
console.log(comparer({name: "Steven", age: 54}, {dog: "Lola"}));


//driver for wordgen
for (var i = 0; i < 10; i++) {
console.log(longest(wordgen(4)));
}