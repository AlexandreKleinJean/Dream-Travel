const notification = document.querySelector(".notification")
const RoomsBtn = document.getElementById("hotel__article-booking-rooms")
const closingBtn = document.querySelector(".notification-close")

RoomsBtn.addEventListener("click", (event) => {
    event.preventDefault();
    notification.classList.add("notification-visible")
})

closingBtn.addEventListener("click", (event) => {
    event.preventDefault();
    notification.classList.remove("notification-visible")
})