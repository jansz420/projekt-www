// AKORDEON
var akordeon = document.getElementsByClassName("akordeon");
var i;

for (i = 0; i < akordeon.length; i++) {
	akordeon[i].addEventListener("click", function () {
		this.classList.toggle("chosen");
		var panel = this.nextElementSibling;
		if (panel.style.maxHeight) {
			panel.style.maxHeight = null;
		} else {
			panel.style.maxHeight = panel.scrollHeight + "px";
		}
	});
}

//KARUZELA

const slides = document.getElementById("slides");
const totalSlides = document.querySelectorAll(".slide").length;
let index = 0;

function showSlide(i) {
	index = (i + totalSlides) % totalSlides;
	slides.style.transform = `translateX(-${index * 100}%)`;
}

function nextSlide() {
	showSlide(index + 1);
}

function prevSlide() {
	showSlide(index - 1);
}

setInterval(() => {
	nextSlide();
}, 7000);
