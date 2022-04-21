const dage = document.querySelectorAll('dage');
const timer = document.querySelectorAll('timer');
const minutter = document.querySelectorAll('minutter');
const sekunder = document.querySelectorAll('sekunder');

const nuvaerendeAar = new Date().getFullYear();

const billetSalgetStart = new Date('Maj 02 $ {nuvaerendeAar +1} 10:00:00');

//Funktionen oprettes og kaldes "updateCountdownTime"
function updateCountdownTime() {
  const nuvaerendeTid = new Date();
  //Udregner differencen mellem hvornår billetsalget starter og hvilken dato vi har.
  const diff = billetSalgetStart - nuvaerendeTid;

  //Udregner dage, timer, minutter og sekunder:
  //Dage: differencen divideres med 1000 for at få sekunderne,
  // med 60 for minutterne, igen med 60 for at få timerne
  // og til sidst med 24 for at få dage.
  const d = Math.floor(diff / 1000 / 60 / 60 / 24);

  //Timer: Fjerner 24 fra parenterserne men vi skal have resterne,
  //da nogle timer er gået, så vi får timerne:
  const t = Math.floor(diff / 1000 / 60 / 60) % 24;

  //Udrenger minutterne: Fjerner 60 fra parenterserne men vi skal have resterne,
  //da nogle minutter er gået, så vi får minutterne:
  const m = Math.floor(diff / 1000 / 60) % 60;

  //Udregner sekunder: Fjerner 60 fra parenterserne men vi skal have resterne,
  //da nogle sekunder er gået, så vi får sekunderne:
  const s = Math.floor(diff / 1000) % 60;


  dage.innerHTML = d;
  timer.innerHTML = t < 10 ? '0' + t : t;
  minutter.innerHTML = m < 10 ? '0' + m : m;
  sekunder.innerHTML = s < 10 ? '0' + s : s;
}

//kalder funktionen:
setInterval(updateCountdownTime, 1000);
