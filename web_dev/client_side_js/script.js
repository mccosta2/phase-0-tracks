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