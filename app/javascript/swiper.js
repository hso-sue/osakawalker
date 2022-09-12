function post (){
  const infiniteSlider = new Swiper(".infinite-slider", {
    loop: true,
    loopedSlides: 2,
    slidesPerView: "auto",
    speed: 30000,
    autoplay: {
      delay: 0,
      disableOnInteraction: false,
    },
  });
}
window.addEventListener("DOMContentLoaded", post);