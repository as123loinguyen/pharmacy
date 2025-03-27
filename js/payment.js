document.addEventListener("DOMContentLoaded", function () {
    const deliveryOptions = document.querySelectorAll(".delivery-options button");
    deliveryOptions.forEach(button => {
        button.addEventListener("click", function () {
            deliveryOptions.forEach(btn => btn.classList.remove("active"));
            this.classList.add("active");
        });
    });

    const orderButton = document.querySelector(".button");
    orderButton.addEventListener("click", function () {
        alert("Đơn hàng của bạn đã được đặt thành công!");
    });
});
