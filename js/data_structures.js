// declare two separate arrays:

var colors = ["blue", "brick red", "green", "macaroni and cheese"];
var horses = ["Ed", "Mo", "Curly", "Larry"];

colors.push("orange");
horses.push("Joe");

horse_colors = {}
for (var i = 0; i < horses.length; i++) {
	horse_colors[horses[i]] = colors[i];
}

console.log(horse_colors)

function Car(make, model, color) {
	this.make = make;
	this.model = model;
	this.color = color;
	this.honk = function() {console.log("Honk!");};
}

var celica = new Car("Toyota", "Celica", "black");
celica.honk();

var durango = new Car("Dodge", "Durango", "red");
durango.honk()
console.log(durango.color)