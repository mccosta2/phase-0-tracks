//OLD JAVASCRIPT CODE
var photo = document.getElementById("lola-photo");
photo.style.border = "5px solid blue";

function addPinkBorder(event) {
	photo.style.border = "14px solid pink";
}

function makeRun(event) {
	photo.hidden = "true";
}

var pinkbutton = document.getElementById("pinkb");
var runbutton = document.getElementById("runb");

pinkbutton.addEventListener("click",addPinkBorder);
runbutton.addEventListener("click",makeRun);

//NOW DO JQUERY 
$(function() {
  console.log( 'ready!' );
});

//More test code
$( "#runb" ).html( "Run Doggy Run" );

//Now to do something tough, add an element.

var clone = $("li").last().clone();
clone.html("Not as Fluffy as you'd think");

$("#dog_list").append(clone);
