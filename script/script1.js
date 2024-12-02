const saber = document.querySelectorAll('.canal');
const btnPrev = document.getElementById('prev-button');
const btnNext = document.getElementById('next-button');

let currentSlide = 0;

function hideSlider(){
    saber.forEach(item = item.classList.remove('on'))
}

function showSlider(){
    saber(currentSlide).classList.add('on')
}

function nextSaber(){
    hideSlider()
    if(currentSlide == saber.length -1) {
        currentSlide = 0
    } else {
        currentSlide++
    }
    showSlider()
}

function prevSlider(){
    hideSlider()
    if(currentSlide == 0) {
        currentSlide = saber.length - 1
    } else {
        currentSlide--
    }
    showSlider()
}



btnNext.addEventListener('click' , nextSaber)
btnPrev.addEventListener('click', prevSlider)