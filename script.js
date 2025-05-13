var akordeon = document.getElementsByClassName("akordeon");
var i;

for (i = 0; i < akordeon.length; i++) {
  akordeon[i].addEventListener("click", function() {
    this.classList.toggle("chosen");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}