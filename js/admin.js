document.addEventListener("DOMContentLoaded", function() {
    const menuItems = document.querySelectorAll(".sidebar ul li a");
    const sections = document.querySelectorAll(".content-section");

    menuItems.forEach(item => {
        item.addEventListener("click", function(event) {
            event.preventDefault();
            const sectionToShow = this.getAttribute("data-section");
            
            sections.forEach(section => {
                if (section.getAttribute("data-section") === sectionToShow) {
                    section.style.display = "block";
                } else {
                    section.style.display = "none";
                }
            });
        });
    });

    // Hiển thị Dashboard mặc định
    sections.forEach(section => {
        if (section.getAttribute("data-section") === "Dashboard") {
            section.style.display = "block";
        } else {
            section.style.display = "none";
        }
    });
});