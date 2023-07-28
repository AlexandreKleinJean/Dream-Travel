document.getElementById("menu__toggle").addEventListener("click", () => {
    const menuItems = document.getElementById("menu__items");
    if (window.getComputedStyle(menuItems).display === "none") {
        menuItems.style.display = "flex";
    } else {
        menuItems.style.display = "none";
    }
});