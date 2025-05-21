// AKORDEON
var akordeon = document.getElementsByClassName("akordeon");
var i;

if (akordeon) {
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
}

//KARUZELA

const slides = document.getElementById("slides");
const totalSlides = document.querySelectorAll(".slide").length;
let index = 0;

if (slides && totalSlides) {
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
}


// KONTAKT SUBMIT

const contactForm = document.getElementById("contact-form");
const submitOverlay = document.getElementById("overlay");

if (contactForm && submitOverlay) {
	contactForm.addEventListener("submit", function(showOverlay) {
		showOverlay.preventDefault();
	
		submitOverlay.classList.add("active-overlay");
	
		document.body.style.cursor = "progress";
		setTimeout(function() {
			contactForm.submit();
			document.body.style.cursor = "default";
		}, 4000);
		
	});
}


// DROPDOWN MENU

const toggle = document.getElementById("dropdown-toggle");
const menu = document.getElementById("default-menu");

if (toggle && menu) {
	toggle.addEventListener("click", function () {
		menu.classList.toggle("show");
		toggle.classList.toggle("open");
	});
}

