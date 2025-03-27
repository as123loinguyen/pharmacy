document.addEventListener("DOMContentLoaded", function () {
    const carouselContainer = document.querySelector(".carousel-container");
    const slides = document.querySelectorAll(".carousel-slide img");
    let index = 0;

    function nextSlide() {
        index = (index + 1) % slides.length;
        updateCarousel();
    }

    function updateCarousel() {
        carouselContainer.style.transform = `translateX(-${index * 100}vw)`;
    }

    setInterval(nextSlide, 3000); // Tự động chuyển sau 3 giây
   
});
