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

let darkMode = false;

  function toggleDarkMode() {
    const root = document.documentElement;

    if (!darkMode) {
      // Tryb ciemny
       root.style.setProperty('--primary-color', '#eaeaea');
      //root.style.setProperty('--primary-color-alfa', '#eaeaeacc');
      root.style.setProperty('--secondary-color', '#ff5252');
      root.style.setProperty('--text-color', '#eaeaea');
      root.style.setProperty('--scd-text-color', '#1c2030');
      root.style.setProperty('--bgclr', '#1e1e1e');
      root.style.setProperty('--bgclr2', '#2c2c2c');
      root.style.setProperty('--bgclr-alfa', '#1e1e1edd');
      darkMode = true;
    } else {
      // Tryb jasny
      root.style.setProperty('--primary-color', '#333333');
      root.style.setProperty('--primary-color-alfa', '#333333cc');
      root.style.setProperty('--secondary-color', '#c62828');
      root.style.setProperty('--text-color', '#eaeaea');
      root.style.setProperty('--scd-text-color', '#1c2030');
      root.style.setProperty('--bgclr', '#f9f9f9');
      root.style.setProperty('--bgclr2', '#fefefe');
      root.style.setProperty('--bgclr-alfa', '#f9f9f9dd');
      darkMode = false;
	}
}