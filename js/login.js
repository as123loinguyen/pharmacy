import { login } from "../api/auth.js";
import { login } from "../api/auth.js";

document.addEventListener("DOMContentLoaded", function () {
    const loginForm = document.getElementById("loginForm");

    loginForm.addEventListener("submit", function (event) {
        event.preventDefault();

        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;

        if (!username || !password) {
            alert("Vui lòng nhập đầy đủ số điện thoại và mật khẩu!");
            return;
        }

        // Gửi yêu cầu đăng nhập (giả lập API call)
        fetch("https://example.com/api/login", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({ username, password }),
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                alert("Đăng nhập thành công!");
                window.location.href = "dashboard.html"; // Chuyển hướng sau khi đăng nhập
            } else {
                alert("Sai số điện thoại hoặc mật khẩu!");
            }
        })
        .catch(error => {
            console.error("Lỗi:", error);
            alert("Đã xảy ra lỗi! Vui lòng thử lại sau.");
        });
    });
});
