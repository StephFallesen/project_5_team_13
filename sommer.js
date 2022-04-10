const carouselSlide = document.querySelector('.carousel-slide');
const carouselImage = document.querySelectorAll('.carousel-slide img');

//buttons
const prevbutton = document.querySelector('#prevbutton');
const nextbutton = document.querySelector('#nextbutton');

//counter
let counter = 1;
const size = carouselImage[0].clientwidth;

carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';

//button listeners

nextbutton.addEventlistener('click',()=>{
  if(counter >= carouselImage.length -1) return
  carouselSlide.style.transition = "transform 0.4s ease-in-out"
  counter++;
  carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';

});

prevbutton.addEventlistener('click',()=>{
  if(counter <= 0) return;
  carouselSlide.style.transition = "transform 0.4s ease-in-out"
  counter--;
  carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';

});

carouselSlide.addEventlistener('transitionend', ()=>{
  if(carouselImage[counter].id ==='lastclone'){
    carouselSlide.style.transition = 'none';
    counter = carouselImage.length -2;
    carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
  }
  if(carouselImage[counter].id ==='firstclone'){
    carouselSlide.style.transition = 'none';
    counter = carouselImage.length - counter;
    carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
  }
  });
