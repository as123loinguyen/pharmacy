const API_URL = "/api/auth"; // Endpoint backend xác thực

// 🟢 Đăng nhập
export async function login(email, password) {
    try {
        const response = await fetch(`${API_URL}/login`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ email, password }),
        });

        const data = await response.json();
        if (!response.ok) throw new Error(data.message || "Đăng nhập thất bại");

        // Lưu token vào Local Storage
        localStorage.setItem("authToken", data.token);
        localStorage.setItem("user", JSON.stringify(data.user));

        return data;
    } catch (error) {
        console.error("Lỗi đăng nhập:", error);
        throw error;
    }
}

// 🟢 Đăng ký tài khoản mới
export async function register(name, email, password) {
    try {
        const response = await fetch(`${API_URL}/register`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ name, email, password }),
        });

        const data = await response.json();
        if (!response.ok) throw new Error(data.message || "Đăng ký thất bại");

        return data;
    } catch (error) {
        console.error("Lỗi đăng ký:", error);
        throw error;
    }
}

// 🟢 Đăng xuất
export function logout() {
    localStorage.removeItem("authToken");
    localStorage.removeItem("user");
    window.location.href = "/pages/login.html"; // Chuyển hướng về trang đăng nhập
}

// 🟢 Kiểm tra người dùng đã đăng nhập chưa
export function isAuthenticated() {
    return !!localStorage.getItem("authToken");
}

// 🟢 Lấy thông tin user hiện tại
export function getCurrentUser() {
    const user = localStorage.getItem("user");
    return user ? JSON.parse(user) : null;
}
