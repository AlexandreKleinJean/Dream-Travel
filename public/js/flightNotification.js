const notification = document.querySelector(".notification")
const BookBtn = document.getElementById("flight__book-btn")
const closingBtn = document.querySelector(".notification-close")

BookBtn.addEventListener("click", (event) => {
    event.preventDefault();
    notification.classList.add("notification-visible")
})

closingBtn.addEventListener("click", (event) => {
    event.preventDefault();
    notification.classList.remove("notification-visible")
})