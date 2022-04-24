//toggle menu
let navLinks = document.getElementById("navLinks");
function showMenu() {
  navLinks.style.left = "0";
}
function hideMenu(){
  navLinks.style.left = "-300px";
}

//Galleri
let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  
  // Loop nedenfor
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}

// Countdown
// Set the date we're counting down to
let countDownDate = new Date("May 2, 2022 12:00:00").getTime();

// Update the count down every 1 second
let x = setInterval(function() {

  // Get today's date and time
  let now = new Date().getTime();

  // Find the distance between now and the count down date
  let distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  let days = Math.floor(distance / (1000 * 60 * 60 * 24));
  let hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  let minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  let seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("demo").innerHTML = days + " dage : " + hours + " timer : "
  + minutes + " minutter : " + seconds + " sekunder";

  // Kontrolstruktur hvis countdown er nået den ønskede dato:
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "BILLETSALGET ER STARTET!";
  }
}, 1000);




// BEKSRIVELSE
// const dage = document.querySelectorAll('dage');
// const timer = document.querySelectorAll('timer');
// const minutter = document.querySelectorAll('minutter');
// const sekunder = document.querySelectorAll('sekunder');
//
// const nuvaerendeAar = new Date().getFullYear();
//
// const billetSalgetStart = new Date('Maj 02 $ {nuvaerendeAar +1} 10:00:00');
//
// //Funktionen oprettes og kaldes "updateCountdownTime"
// function updateCountdownTime() {
//   const nuvaerendeTid = new Date();
//   //Udregner differencen mellem hvornår billetsalget starter og hvilken dato vi har.
//   const diff = billetSalgetStart - nuvaerendeTid;
//
//   //Udregner dage, timer, minutter og sekunder:
//   //Dage: differencen divideres med 1000 for at få sekunderne,
//   // med 60 for minutterne, igen med 60 for at få timerne
//   // og til sidst med 24 for at få dage.
//   const d = Math.floor(diff / 1000 / 60 / 60 / 24);
//
//   //Timer: Fjerner 24 fra parenterserne men vi skal have resterne,
//   //da nogle timer er gået, så vi får timerne:
//   const t = Math.floor(diff / 1000 / 60 / 60) % 24;
//
//   //Udrenger minutterne: Fjerner 60 fra parenterserne men vi skal have resterne,
//   //da nogle minutter er gået, så vi får minutterne:
//   const m = Math.floor(diff / 1000 / 60) % 60;
//
//   //Udregner sekunder: Fjerner 60 fra parenterserne men vi skal have resterne,
//   //da nogle sekunder er gået, så vi får sekunderne:
//   const s = Math.floor(diff / 1000) % 60;
//
//
//   dage.innerHTML = d;
//   timer.innerHTML = t < 10 ? '0' + t : t;
//   minutter.innerHTML = m < 10 ? '0' + m : m;
//   sekunder.innerHTML = s < 10 ? '0' + s : s;
// }
//
// //kalder funktionen:
// setInterval(updateCountdownTime, 1000);
