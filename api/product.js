const API_URL = "/api/products"; // Endpoint backend sản phẩm

// 🟢 Lấy danh sách sản phẩm
export async function getProducts() {
    try {
        const response = await fetch(`${API_URL}`);
        const data = await response.json();
        if (!response.ok) throw new Error(data.message || "Không thể lấy danh sách sản phẩm");

        return data;
    } catch (error) {
        console.error("Lỗi lấy danh sách sản phẩm:", error);
        throw error;
    }
}

// 🟢 Lấy chi tiết sản phẩm theo ID
export async function getProductById(productId) {
    try {
        const response = await fetch(`${API_URL}/${productId}`);
        const data = await response.json();
        if (!response.ok) throw new Error(data.message || "Không thể lấy chi tiết sản phẩm");

        return data;
    } catch (error) {
        console.error("Lỗi lấy chi tiết sản phẩm:", error);
        throw error;
    }
}

// 🟢 Tìm kiếm sản phẩm theo từ khóa
export async function searchProducts(query) {
    try {
        const response = await fetch(`${API_URL}/search?q=${encodeURIComponent(query)}`);
        const data = await response.json();
        if (!response.ok) throw new Error(data.message || "Không thể tìm kiếm sản phẩm");

        return data;
    } catch (error) {
        console.error("Lỗi tìm kiếm sản phẩm:", error);
        throw error;
    }
}
