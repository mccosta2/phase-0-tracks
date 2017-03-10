//pass a string to function
//cycle through the letters in reverse
//print letter 

var str = "hello";


function reverse(str) {
	var	str2 ="";
	for (var i = 1; i < str.length+1; i++) {
//		console.log(str[str.length-i]);
		str2 += str[str.length-i];

		}
	return str2;
	}

if (1 == 1) {
console.log(reverse("Monkey"));
}
