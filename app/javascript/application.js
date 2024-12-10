// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Add this JavaScript for enlarging painting images
document.addEventListener("DOMContentLoaded", () => {
  const images = document.querySelectorAll(".painting-image");

  images.forEach((image) => {
    image.addEventListener("click", () => {
      if (image.style.transform === "scale(1.5)") {
        image.style.transform = "scale(1)";
        image.style.transition = "transform 0.3s ease";
      } else {
        image.style.transform = "scale(1.5)";
        image.style.transition = "transform 0.3s ease";
      }
    });
  });
});
