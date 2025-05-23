// AKORDEON
const akordeon = document.getElementsByClassName("akordeon");
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

// DARKMODE

let darkMode = localStorage.getItem("darkMode") == "true";
const toggleText = document.querySelector(".darkmode-toggle");

if (darkMode) {   //jesli juz jest odpalony
	document.documentElement.style.setProperty('--primary-color', '#eaeaea');
	document.documentElement.style.setProperty('--bgclr', '#333333');
	document.documentElement.style.setProperty('--bgclr-alfa', '#333333cc');
	document.documentElement.style.setProperty('--scd-text-color', '#eaeaea');
	document.documentElement.style.setProperty('--bgclr2', '#2a2a2a');
	document.documentElement.style.setProperty('--bgclr3', '#434343');
	document.documentElement.style.setProperty('--footer-color', '#2a2a2a');
	document.documentElement.style.setProperty('--input-color', '#555555');
	document.documentElement.style.setProperty('--box-shadow', 'rgba(255, 255, 255, 0.2)');
	toggleText.innerHTML = "☀️ <span>Tryb jasny</span>";
}

function toggleTheme() {  
	darkMode = !darkMode;
	if (darkMode) {    //wlacza darkmode
		document.documentElement.style.setProperty('--primary-color', '#eaeaea');
		document.documentElement.style.setProperty('--bgclr', '#333333');
		document.documentElement.style.setProperty('--bgclr-alfa', '#333333cc');
		document.documentElement.style.setProperty('--scd-text-color', '#eaeaea');
		document.documentElement.style.setProperty('--bgclr2', '#2a2a2a');
		document.documentElement.style.setProperty('--bgclr3', '#434343');
		document.documentElement.style.setProperty('--footer-color', '#2a2a2a');
		document.documentElement.style.setProperty('--input-color', '#555555');
		document.documentElement.style.setProperty('--box-shadow', 'rgba(255, 255, 255, 0.2)');
		localStorage.setItem("darkMode", "true");
		toggleText.innerHTML = "☀️ <span>Tryb jasny</span>";
	} else {		//wylacza darkmode
		document.documentElement.style.setProperty('--primary-color', '#333333');
		document.documentElement.style.setProperty('--bgclr', '#f9f9f9');
		document.documentElement.style.setProperty('--bgclr-alfa', '#f9f9f9b0');
		document.documentElement.style.setProperty('--scd-text-color', '#1c2030');
		document.documentElement.style.setProperty('--bgclr2', '#fefefe');
		document.documentElement.style.setProperty('--bgclr3', '#eaeaea');
		document.documentElement.style.setProperty('--footer-color', '#333333');
		document.documentElement.style.setProperty('--input-color', '#fff');
		document.documentElement.style.setProperty('--box-shadow', 'rgba(0, 0, 0, 0.2)');
		localStorage.setItem("darkMode", "false");
		toggleText.innerHTML = "🌙 <span>Tryb ciemny</span>";
	}
}
