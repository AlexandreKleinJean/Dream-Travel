const notification = document.querySelector(".notification")
const btn = document.getElementById("flight__book-btn")

btn.addEventListener("click", () => {
notification.classList.add("notification-visible")
})