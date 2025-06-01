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



// KONTAKT FORM
const contactForm = document.getElementById("contact-form");
const showErrors = document.getElementById("contact-error");
const submitOverlay = document.getElementById("overlay");

const contactName = document.getElementById("contact-name");
const contactEmail = document.getElementById("contact-email");
const contactMessage = document.getElementById("contact-mess");

const nameRegex = /^[A-ZĄĆĘŁŃÓŚŹŻ][a-ząćęłńóśźż]+(?: [A-ZĄĆĘŁŃÓŚŹŻ][a-ząćęłńóśźż]+)?$/;
const mailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,}$/i;

// LOCAL STORAGE KONTAKT

let activeOverlay = localStorage.getItem("SubmitOverlay") == "true";

if (activeOverlay) {
	submitOverlay.classList.add("active-overlay");
	localStorage.removeItem("SubmitOverlay")
	setTimeout(function() {	
		submitOverlay.classList.remove("active-overlay");
	}, 4000);
}

if (contactName && contactEmail && contactMessage) {
	contactName.value = localStorage.getItem("NameContact") || "";
	contactEmail.value = localStorage.getItem("EmailContact") || "";
	contactMessage.value = localStorage.getItem("MessageContact") || "";
	

	contactName.addEventListener("input", function () {
		localStorage.setItem("NameContact", contactName.value.trim());
	});

	contactEmail.addEventListener("input", function () {
		localStorage.setItem("EmailContact", contactEmail.value.trim());
	});

	contactMessage.addEventListener("input", function () {
		localStorage.setItem("MessageContact", contactMessage.value.trim());
	});
	
}

if (contactForm && submitOverlay && showErrors) {
	contactForm.addEventListener("submit", function(e) {
		let messages = []

		if (!nameRegex.test(contactName.value.trim())) {
			messages.push("Imię musi zaczynać się wielką literą i może zawierać tylko litery (np. Jan, Anna Maria)");
		}

		if (!mailRegex.test(contactEmail.value.trim())) {
			messages.push("Podaj poprawny adres e-mail, np. jan.kowalski@example.com");
		}

		
		if(messages.length > 0){
			e.preventDefault();
			showErrors.innerHTML = messages.join('<br>');
			showErrors.style.display = "flex"
		}

		else {  //pokazuje overlaya i wykonuje submit
			
			localStorage.setItem("SubmitOverlay", "true")

			localStorage.removeItem("NameContact")
			localStorage.removeItem("EmailContact")
			localStorage.removeItem("MessageContact")

			contactForm.submit();
		}
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

document.documentElement.classList.add("no-transitions");

setTimeout(function() { //by nie bylo animacji przy przelaczaniu stron
	document.documentElement.classList.remove("no-transitions");
}, 100);

if (darkMode) {   //jesli juz jest odpalony
	document.documentElement.style.setProperty('--primary-color', '#eaeaea');
	document.documentElement.style.setProperty('--bgclr', '#333333');
	document.documentElement.style.setProperty('--bgclr-alfa', '#2a2a2ab0');
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
		document.documentElement.style.setProperty('--bgclr-alfa', '#2a2a2ab0');
		document.documentElement.style.setProperty('--scd-text-color', '#eaeaea');
		document.documentElement.style.setProperty('--bgclr2', '#2a2a2a');
		document.documentElement.style.setProperty('--bgclr3', '#434343');
		document.documentElement.style.setProperty('--footer-color', '#2a2a2a');
		document.documentElement.style.setProperty('--input-color', '#555555');
		document.documentElement.style.setProperty('--box-shadow', 'rgba(255, 255, 255, 0.2)');
		document.documentElement.style.setProperty('--secondary-color', '#fa3254');
		localStorage.setItem("darkMode", "true");
		toggleText.innerHTML = "☀️ <span>Tryb jasny</span>";
	} else {		//wylacza darkmode
		document.documentElement.style.setProperty('--primary-color', '#333333');
		document.documentElement.style.setProperty('--bgclr', '#f9f9f9');
		document.documentElement.style.setProperty('--bgclr-alfa', '#e1dfdfb0');
		document.documentElement.style.setProperty('--scd-text-color', '#1c2030');
		document.documentElement.style.setProperty('--bgclr2', '#fefefe');
		document.documentElement.style.setProperty('--bgclr3', '#eaeaea');
		document.documentElement.style.setProperty('--footer-color', '#333333');
		document.documentElement.style.setProperty('--input-color', '#fff');
		document.documentElement.style.setProperty('--box-shadow', 'rgba(0, 0, 0, 0.2)');
		document.documentElement.style.setProperty('--secondary-color', '#c62828');
		localStorage.setItem("darkMode", "false");
		toggleText.innerHTML = "🌙 <span>Tryb ciemny</span>";
	}
}

//FILTROWANIE DIET
let vegeActive = true;
let meatActive = true;

function updateButtonStyles() {
    document.getElementById("vege-button").classList.toggle("active", vegeActive);
    document.getElementById("no-vege-button").classList.toggle("active", meatActive);
}

function loadFilteredDiets() {
    const params = new URLSearchParams();
    if (vegeActive) params.append("wege", "1");
    if (meatActive) params.append("meat", "1");
	
	const sort = document.getElementById("sort-select")?.value;
    if (sort) params.append("sort", sort);

    fetch("list.php?" + params.toString())
        .then(res => res.text())
        .then(html => {
            document.getElementById("list").innerHTML = html;
        });

    updateButtonStyles();
}

document.getElementById("sort-select").addEventListener("change", loadFilteredDiets);

document.getElementById("vege-button").addEventListener("click", () => {
    vegeActive = !vegeActive;
    loadFilteredDiets();
});

document.getElementById("no-vege-button").addEventListener("click", () => {
    meatActive = !meatActive;
    loadFilteredDiets();
});

window.addEventListener("DOMContentLoaded", loadFilteredDiets);