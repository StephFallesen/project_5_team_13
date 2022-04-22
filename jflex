html {
  font-family: "Poppins", sans-serif;
}

:root {
  --hvid: #ffffff;
  --grå: #ADA396;
  --rød: #c35146;
  --brun: #d7924f;
  --orange: #de956a;
  --beige: #f6cd97;
  --sort: #393939;
  --egg: #ffedd5;
  /* skrives: var(--farve); */
}

p {
  font-size: 16px;
  font-weight: 300;
  color: var(--sort);
}

h1 {
  font-size: 34px;
  color: var(--sort);
}

h2 {
  font-size: 24px;
  color: var(--rød);
  font-weight: 800;
  text-align: center;
}

h3 {
  font-size: 22px;
  color: var(--sort);
  font-weight: 500;
}

nav {
  display: flex;
  position: inherit;
  border-radius: 0 0 30px 30px;
  justify-content: space-between;
  background-color: var(--orange);
  width: 80%;
  align-items: flex-start;
  margin-left: 9.2%;
  margin-top: 0;
  z-index: 10;
}

nav ul {
  display: flex;
  align-items: baseline;
}

nav img {
  display: flex;
  width: 3rem;
  align-items: baseline;
}

.nav-links {
  flex: 1;
  text-align: right;
}

.nav-links ul li {
  list-style: none;
  display: inline-block;
  padding: 0px 20px;
  position: relative;
}

.nav-links ul li a {
  color: var(--hvid);
  text-decoration: none;
  font-size: 20px;
  align-items: baseline;
}

.nav-links ul li::after {
  content: '';
  width: 0%;
  height: 3px;
  background: var(--egg);
  display: block;
  margin: auto;
  transition: 0.5s;
}

.nav-links ul li:hover::after {
  width: 100%;
}

nav .fa {
  display: none;
}

@media only screen and (min-width : 425px) and (max-width: 480px) {
  html, body {
    overflow-x: hidden;
  }

  nav {
    background-color: var(--hvid);
  }

  .nav-links ul li {
    display: block;
  }

  .nav-links {
    position: absolute;
    /* width: 200px; */
    top: 0;
    right: -300px;
    text-align: left;
    z-index: 2;
    transition: 1s;
    background-color: var(--orange);
    border-radius: 0 0 30px 30px;
    flex-direction: column;
  }

  nav .fa {
    display: block;
    color: black;
    margin: 10px;
    font-size: 2rem;
    cursor: pointer;
  }

  .nav-links ul {
    padding: 20px;
    display: block;
  }

  nav a img {
    margin-left: 0rem;
    margin-top: 0rem;
  }

  .nav-links ul li a {
    color: var(--hvid);
    text-decoration: none;
    font-size: 12px;
    line-height: 40px;
  }
}

@media only screen and (min-width : 300px) and (max-width: 424px) {
  html, body {
    overflow-x: hidden;
  }

  nav {
    background-color: var(--hvid);
  }

  .nav-links ul li {
    display: block;
  }

  .nav-links {
    position: absolute;
    width: 200px;
    top: 0;
    right: -300px;
    text-align: left;
    z-index: 2;
    transition: 1s;
    background-color: var(--orange);
    border-radius: 0 0 30px 30px;
    flex-direction: column;
  }

  nav .fa {
    display: block;
    color: var(--hvid);
    margin: 10px;
    font-size: 2rem;
    cursor: pointer;
  }

  .nav-links ul {
    padding: 20px;
    display: block;
  }

  nav a img {
    margin-left: 1rem;
    margin-top: 0rem;
    width: 4rem;
  }

  .nav-links ul li a {
    color: var(--hvid);
    text-decoration: none;
    font-size: 16px;
    line-height: 40px;
  }
}

@media only screen and (min-width : 425px) and (max-width: 1090px) {
  html, body {
    overflow-x: hidden;
  }

  nav {
    background-color: var(--hvid);
  }

  .nav-links ul li {
    display: block;
  }

  .nav-links {
    position: absolute;
    width: 300px;
    top: 0;
    right: -300px;
    text-align: left;
    z-index: 2;
    transition: 1s;
    background-color: var(--orange);
    border-radius: 0 0 30px 30px;
    flex-direction: column;
  }

  nav .fa {
    display: block;
    color: var(--sort);
    margin: 10px;
    font-size: 2rem;
    cursor: pointer;
  }

  .nav-links ul {
    padding: 20px;
    display: block;
  }

  nav a img {
    margin-left: 0rem;
    margin-top: 0rem;
    padding-top: 1rem;
    padding-left: 0.5rem;
    width: 4rem;
  }

  .nav-links ul li a {
    color: var(--hvid);
    text-decoration: none;
    font-size: 15px;
    line-height: 40px;
  }
}

/* Landing */
.stephLanding {
  width: 80%;
  margin: auto;
  height: 120vh;
  background: var(--egg);
  border-radius: 10px;
  margin-bottom: 2%;
  box-sizing: border-box;
}

.stephIndhold {
  padding-top: 100px;
}

.stephIndhold h1, h2 {
  text-align: center;
}

.stephIndhold .sInfo {
  margin-top: 150px;
  text-align: center;
}

/* Bog */
body .book {
  width: 100%;
  height: 10em;
  display: flex;
  perspective: 3000px;
}

.book {
  display: flex;
  position: relative;
  align-items: center;
  margin-top: 200px;
  justify-content: center;
}

.front, .back {
  background-color: var(--egg);
  background-image: linear-gradient(to right, #432616, #80471c);
  position: absolute;
  height: 360px;
  width: 240px;
  transform-origin: left center;
  transition: transform .5s ease-in-out, box-shadow .4s ease-in-out;
  border-radius: 0px 20px 20px 0px;
}

span .front, .fpage, .spage, .gpage, .tpage, .epage, .mpage {
  background: #f7f9fc;
  position: absolute;
  height: 360px;
  width: 240px;
  transform-origin: left center;
  transition: transform .5s ease-in-out, box-shadow .4s ease-in-out;
  border-radius: 0px 20px 20px 0px;
}

.book:hover {
  transform: translateX(10%);
}

.book:hover .front {
  transform: rotateY(-145deg);
  box-shadow: 0 1em 3em 0 rgba(0, 0, 0, .2);
}

.book:hover .fpage {
  transform: rotateY(-125deg);
  box-shadow: 0 0 1em 0 rgba(0, 0, 0, .2);
  z-index: 1;
}

.book:hover .spage {
  transform: rotateY(-115deg);
  box-shadow: 0 0 1em 0 rgba(0, 0, 0, .2);
  z-index: 1;
}

.book:hover .spage p {
  transform: rotateY(175deg);
  font-size: 25px;
  font-weight: 600;
  color: var(--sort);
  padding-left: 50px;
}

.book:hover .gpage {
  transform: rotateY(-135deg);
  box-shadow: 0 0 1em 0 rgba(0, 0, 0, .2);
}

.book:hover .mpage {
  transform: rotateY(-60deg);
  box-shadow: 0 0 1em 0 rgba(0, 0, 0, .2);
}

.book:hover .tpage {
  transform: rotateY(-40deg);
  box-shadow: 0 0 1em 0 rgba(0, 0, 0, .2);
}

.book:hover .epage {
  transform: rotateY(-50deg);
  box-shadow: 0 0 1em 0 rgba(0, 0, 0, .2);
}

.book:hover .back {
  transform: rotateY(-30deg);
  box-shadow: 0 1em 3em 0 rgba(0, 0, 0, .2);
  z-index: -1;
}

@media screen and (min-width: 375px) and (max-width:491px) {
  .stephIndhold {
    padding-top: 25px;
  }

  .stephIndhold h1 {
    font-size: 25px;
  }

  .stephIndhold h2 {
    font-size: 15px;
  }

  .book {
    margin-top: 90px;
    justify-content: center;
  }

  .book:hover {
    transform: translateX(20%);
  }

  .front, .back {
    height: 250px;
    width: 150px;
  }

  span .front, .fpage, .spage, .gpage, .tpage, .epage, .mpage {
    height: 250px;
    width: 150px;
    transform-origin: left center;
    transition: transform .5s ease-in-out, box-shadow .4s ease-in-out;
    border-radius: 0px 20px 20px 0px;
  }

  .book:hover .spage p {
    transform: rotateY(175deg);
    font-size: 20px;
    font-weight: 400;
    color: var(--sort);
    padding-left: 10px;
  }

  .sInfo {
    margin-top: 30px;
  }
}

@media screen and (min-width: 492px) and (max-width:575px) {
  .stephIndhold {
    padding-top: 25px;
  }

  .stephIndhold h1 {
    font-size: 25px;
  }

  .stephIndhold h2 {
    font-size: 20px;
  }

  .book {
    margin-top: 120px;
  }

  .book:hover {
    transform: translateX(25%);
  }

  .front, .back {
    height: 330px;
    width: 190px;
  }

  span .front, .fpage, .spage, .gpage, .tpage, .epage, .mpage {
    height: 330px;
    width: 190px;
  }

  .book:hover .spage p {
    font-size: 20px;
    font-weight: 400;
    color: var(--sort);
    padding-left: 10px;
  }

  p .sInfo {
    margin-top: 40px;
  }
}

@media screen and (min-width: 576px) and (max-width:1090px) {
  .stephIndhold {
    padding-top: 25px;
  }

  .stephIndhold h1 {
    font-size: 25px;
  }

  .stephIndhold h2 {
    font-size: 20px;
  }

  .book {
    margin-top: 150px;
  }

  .book:hover {
    transform: translateX(15%);
  }

  .front, .back {
    height: 350px;
    width: 210px;
  }

  span .front, .fpage, .spage, .gpage, .tpage, .epage, .mpage {
    height: 350px;
    width: 210px;
  }

  .book:hover .spage p {
    font-size: 25px;
    font-weight: 400;
    color: var(--sort);
    padding-left: 10px;
  }

  p .sInfo {
    margin-top: 40px;
  }
}

/* Countdown */
#demo {
  text-align: center;
  margin-left: 10%;
  margin-right: 10%;
}

.stephImg {
  width: 350px;
  display: block;
  margin-left: auto;
  margin-right: auto;
}

/* 3 bokse */
.course {
  width: 80%;
  margin: auto;
  padding-top: 75px;
}

.course h1, h3 {
  text-align: center;
}

.row {
  margin-top: 5%;
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}

.course-col {
  flex-basis: 32%;
  background: var(--egg);
  border-radius: 10px;
  margin-bottom: 2%;
  padding: 15px;
  box-sizing: border-box;
}

#stephCTA {
  align-items: center;
  background-color: var(--brun);
  display: flex;
  align-items: center;
  width: 200px;
  height: 50px;
  cursor: pointer;
  border-radius: 15px;
  border-width: 0;
  font-size: 22px;
  color: var(--hvid);
  font-weight: 400;
  justify-content: center;
  position: relative;
  margin: auto;
}

@media screen and (min-width: 375px) and (max-width:900px) {
  .course-col {
    flex-basis: auto;
  }

  .row {
    flex-direction: column;
  }
}

/* Nyhedsbrev */
.newsletter-box {
  display: flex;
  justify-content: center;
  position: relative;
  width: 80%;
  background-color: var(--grå);
  text-align: center;
  padding: 60px;
  border-radius: 40px;
  margin: auto;
}

#newsletter {
  position: relative;
  z-index: 2;
}

#newsletter h1 {
  color: var(--hvid);
  margin-bottom: 5px;
}

#newsletter p {
  color: var(--hvid);
  margin-top: 10px;
  font-weight: 300;
}

.inline-form {
  margin: 30px 0 0;
}

.inline-form input {
  display: inline-block;
  border: none;
  outline: none;
  margin: 5px 4px;
  font-size: 14px;
  max-width: 100%;
  padding: 12px 20px;
  border-radius: 30px;
}

input[type="email"] {
  width: 250px;
}

input[type="submit"] {
  cursor: pointer;
  background: var(--beige);
  width: 180px;
  color: var(--sort);
  text-align: center;
  font-weight: 400;
}

input[type="submit"]:hover, input[type="submit"]:focus, input[type="submit"]:active {
  background: var(--egg);
}

@media (max-width: 728px) {
  .newsletter-box {
    padding: 80px 20px;
  }

  input[type="text"],
  input[type="email"] {
    width: 210px;
  }

  input[type="submit"] {
    width: 250px;
  }
}

/* Jeanett */
.jkontakth1 {
  color: var(--rød);
}

.jkontakttekst {
  font-weight: 300;
  font-size: 15px;
}

.jflex-container {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: flex-start;
  align-items: center;
  align-content: stretch;
}

.jflex-items1:nth-child(1) {
  display: block;
  flex-grow: 0;
  flex-shrink: 1;
  flex-basis: auto;
  align-self: auto;
  order: 0;
  width: 50%;
}

.jflex-items1:nth-child(1) {
  display: block;
  height: 100%;
  background: var(--egg);
  border-radius: 10px;
  margin-bottom: 2%;
  padding: 47px;
  margin-top: 45px;
  width: 80%; 
}
.jflex-items2:nth-child(2) {
  display: block;
  height: 100%;
  background: var(--egg);
  border-radius: 10px;
  margin-bottom: 2%;
  padding: 47px;
  margin-top: 45px;
}
.jflex-items3:nth-child(3) {
  display: block;
  height: 100%;
  background: var(--egg);
  border-radius: 10px;
  margin-bottom: 2%;
  padding: 47px;
  margin-top: 45px;
  width: 80%; 
}

#jkontakt {
  background-color: var(--brun);
  display: grid;
  align-items: center;
  width: 200px;
  height: 50px;
  cursor: pointer;
  border-radius: 15px;
  border-width: 0;
  font-size: 22px;
  color: var(--hvid);
  font-weight: 400;
  margin-top: 60px;
}

/* GALLERI */
.jgrid {
  display: grid;
  grid-template-rows: repeat(1, 180px);
  grid-template-columns: repeat(1, 1fr);
  grid-gap: 5px;
}

.jitem:nth-child(1) {
  grid-column: 3 / 3;
  grid-row: 1 / 4;
  width: 228px;
  height: 242px;
}

.jitem:nth-child(2) {
  grid-column: 2 / 4;
  grid-row: 1 / 3;
  width: 228px;
  height: 242px;
}

.jitem:nth-child(3) {
  grid-column: 3 / 4;
  grid-row: 3 / 5;
  width: 228px;
  height: 212px;
}

.jitem:nth-child(4) {
  grid-column: 2 / 3;
  grid-row: 3 / 4;
  width: 228px;
  height: 212px;
}

@media screen and (max-width: 1100px) {
  .jflex-container {
    flex-direction: column-reverse;
  }

  .jflex-items2:nth-child(2) {
    text-align: center
  }

  #jkontakt {
    position: inherit;
  }

  .jitem:nth-child(1) {
    margin-left: 0px;
  }

  .jitem:nth-child(2) {
    margin-left: -90px;
  }

  .jitem:nth-child(3) {
    margin-left: 0px;
  }

  .jitem:nth-child(4) {
    margin-left: -90px;
  }
}

/* styling code */
.jgrid {
  margin: 100px;
  max-width: 100%;
}

.jgrid>.jitem {
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* TIMELINE */
.timeline {
  margin: 100px 0 50px 0;
  padding: 15px;
  display: grid;
  grid-template-columns: 40% auto;
  justify-content: center;
}

.jul {
  margin-top: 30px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  list-style: none;
  padding: 0;
}

.jli {
  margin-top: 30px;
  position: relative;
  padding: 25px;
}

.jli p {
  padding: 0 20px;
  transition: 1.5s;
}

.date {
  position: absolute;
  top: 30px;
  left: -50px;
  opacity: 0;
  transition: 1.5s;
  font-size: 12px;
}

.timeline-line {
  background: rgb(228, 228, 228);
  width: 4px;
  border-radius: 12px;
  position: relative;
  justify-self: end;
}

.timeline-point {
  border: none;
  position: absolute;
  border-radius: 50%;
  background: rgb(228, 228, 228);
  width: 8px;
  height: 8px;
  top: 30px;
  left: -6px;
  transition: 1.5s ease;
}

.timeline-innerline {
  position: absolute;
  background: var(--brun);
  width: 4px;
  height: 0%;
  top: 0%;
  left: 0%;
  transition: 1s linear;
}

.jbillederbunden1 {
  height: 106px;
  width: 81px;
  margin-left: 13px;
  margin-bottom: -75px;
}

.jbillederbunden2 {
  height: 166px;
  width: 111px;
  margin-left: 13px;
  margin-bottom: -75px;
}

.jbillederbunden3 {
  height: 234px;
  width: 181px;
  margin-left: 13px;
  margin-bottom: -75px;
}

@media screen and (min-width: 728px) {
  .timeline {
    display: block;
  }

  .jul {
    flex-direction: row;
  }

  .jli {
    margin-top: 0px;
    position: relative;
    /* width: 100%; */
    padding: 0px;
  }

  .jli p {
    transform: translateY(-10px);
    opacity: 0;
    padding: 0 20px;
    transition: 1.5s;
  }

  .date {
    opacity: 0;
    transition: 1.5s;
    font-size: 12px;
    position: absolute;
    top: -60px;
    left: 38%;
  }

  .timeline-point {
    width: 15px;
    height: 15px;
    top: -40px;
    left: 40%;
    transition: 1.5s ease;
  }

  .timeline-line {
    width: 100%;
    height: 4px;
  }

  .timeline-innerline {
    position: absolute;
    background: var(--brun);
    width: 0%;
    height: 4px;
    top: 0%;
    left: 0%;
    transition: 1s linear;
    border-radius: 999px;
  }
}

/* Caro */
.centerImage {
  text-align: center;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

.centerImage img {
  width: 300px;
  height: auto;
  margin-bottom: 50px;
  margin-top: 50px;
}

.button {
  display: flex;
  background-color: var(--brun);
  align-items: center;
  color: var(--hvid);
  padding: 15px 25px;
  border: none;
  border-radius: 15px;
  width: 200px;
  height: 50px;
  justify-content: center;
  font-size: 22px;
  margin: 0;
  font-weight: 400;
  margin-bottom: 50px;
}

.button :hover {
  background-color: var(--orange);
  width: auto;
}

* .slideshow-container {
  box-sizing: border-box
}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  width: 80%;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

.prev {
  left: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dots {
  text-align: center;
  margin-bottom: 50px;
}

.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {
    opacity: .4
  }

  to {
    opacity: 1
  }
}

.title {
  text-align: center;
  margin-top: 60px;
}

/* Peter */
footer {
  display: grid;
  margin-top: 70px;
  padding-top: 40px;
  font-family: "Proxima Nova Alt", Sans-serif;
  color: var(--sort);
  text-align: left;
  grid-template-columns: auto auto auto;
  background-color: var(--orange);
}

footer img {
  width: 3rem;
}

.footercourse {
  text-align: center;
  color: var(--sort);
  margin-left: 80px;
}

.row {
  margin-top: 5%;
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
}

.course-col {
  flex-basis: 32%;
  background: var(--egg);
  border-radius: 10px;
  margin-bottom: 2%;
  padding: 15px;
  box-sizing: border-box;
}

.course h1, h3 {
  text-align: center;
}

.course {
  width: 80%;
  margin: auto;
  padding-top: 75px;
}

.faq-heading {
  padding: 20px 60px;
}

.faq-container {
  display: flex;
  justify-content: center;
  flex-direction: column;
}

.hr-line {
  width: 60%;
  margin: auto;
}

/* Style the buttons that are used to open and close the faq-page body */
.faq-page {
  /* background-color: #eee; */
  color: var(--sort);
  cursor: pointer;
  padding: 30px 20px;
  width: 60%;
  border: none;
  outline: none;
  margin: auto;
}

.faq-body {
  margin: auto;
  /* text-align: center; */
  width: 50%;
  padding: auto;
}

/* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
.active,
.faq-page:hover {
  background-color: #F9F9F9;
}

/* Style the faq-page panel. Note: hidden by default */
.faq-body {
  padding: 0 18px;
  background-color: white;
  display: none;
  overflow: hidden;
}

.faq-page:after {
  content: '\02795';
  /* Unicode character for "plus" sign (+) */
  font-size: 20px;
  float: right;
  margin-left: 5px;
}

.active:after {
  content: "\2796";
  /* Unicode character for "minus" sign (-) */
}

/* Ribaz */





/*Styleguide*/
#typografi {
  margin-top: 50px;
}
.sidenav {
  height: 100%;
  width: 250px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: var(--orange);
  overflow-x: hidden;
  padding-top: 20px;
}

/* Page content */
.main {
  margin-left: 200px;
  /* Same as the width of the sidenav */
}

/* The navigation menu links */
.sidenav a {
  padding: 25px 8px 8px 40px;
  font-weight: 200;
  text-decoration: none;
  font-size: 20px;
  color: var(--hvid);
  display: block;
  transition: 0.3s;
}

/* When you mouse over the navigation links, change their color */
.sidenav a:hover {
  color: var(--rød);
}

.styleguideMain {
  margin-left: 300px;
  margin-bottom: 70px;
}

.styleguideMain h2 {
  text-align: left;
}

.styleguideMain h3 {
  text-align: left;
}

#stephBaggrund {
  background: #f2f2f2;
  width: 70%;
  border-radius: 10px;
  margin-bottom: 2%;
  padding: 15px;
  box-sizing: border-box;
}

.farve1 {
  color: var(--hvid);
  border-radius: 20px;
  margin: 10px;
  width: 100px;
  height: 100px;
  box-shadow: 7px 7px 7px #f2f2f2;
  border: 1px solid #f2f2f2;
}

.farve2 {
  background-color: var(--grå);
  border-radius: 20px;
  margin: 10px;
  width: 100px;
  height: 100px;
  box-shadow: 7px 7px 7px #f2f2f2;
  border: 1px solid #f2f2f2;
}

.farve3 {
  background-color: var(--rød);
  border-radius: 20px;
  margin: 10px;
  width: 100px;
  height: 100px;
  box-shadow: 7px 7px 7px #f2f2f2;
  border: 1px solid #f2f2f2;
}

.farve4 {
  background-color: var(--brun);
  border-radius: 20px;
  margin: 10px;
  width: 100px;
  height: 100px;
  box-shadow: 7px 7px 7px #f2f2f2;
  border: 1px solid #f2f2f2;
}

.farve5 {
  background-color: var(--orange);
  border-radius: 20px;
  margin: 10px;
  width: 100px;
  height: 100px;
  box-shadow: 7px 7px 7px #f2f2f2;
  border: 1px solid #f2f2f2;
}

.farve6 {
  background-color: var(--beige);
  border-radius: 20px;
  margin: 10px;
  width: 100px;
  height: 100px;
  box-shadow: 7px 7px 7px #f2f2f2;
  border: 1px solid #f2f2f2;
}

.farve7 {
  background-color: var(--sort);
  border-radius: 20px;
  margin: 10px;
  width: 100px;
  height: 100px;
  box-shadow: 7px 7px 7px #f2f2f2;
  border: 1px solid #f2f2f2;
}

.farve8 {
  background-color: var(--egg);
  border-radius: 20px;
  margin: 10px;
  width: 100px;
  height: 100px;
  box-shadow: 7px 7px 7px #f2f2f2;
  border: 1px solid #f2f2f2;
}

.styleguideMain #stephCTA {
  margin: 0;
}

.styleguideMain textarea {
  width: 45%;
  height: 100px;
}

.styleguideMain .newsletter-box {
  padding: 20px;
  width: 70%;
  margin: 0;
}

.styleguideMain .stephLanding h2 {
  text-align: center;
}

/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
  .sidenav {
    padding-top: 15px;
  }

  .sidenav a {
    font-size: 18px;
  }
}