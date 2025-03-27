const API_URL = "/api/stats"; // Endpoint backend xử lý thống kê

// 🟢 Lấy tổng doanh thu theo khoảng thời gian
export async function getRevenueStats(startDate, endDate) {
    try {
        const response = await fetch(`${API_URL}/revenue?startDate=${startDate}&endDate=${endDate}`);
        const data = await response.json();
        if (!response.ok) throw new Error(data.message || "Không thể lấy dữ liệu doanh thu");

        return data;
    } catch (error) {
        console.error("Lỗi lấy doanh thu:", error);
        throw error;
    }
}

// 🟢 Lấy danh sách sản phẩm bán chạy
export async function getBestSellingProducts() {
    try {
        const response = await fetch(`${API_URL}/bestsellers`);
        const data = await response.json();
        if (!response.ok) throw new Error(data.message || "Không thể lấy danh sách sản phẩm bán chạy");

        return data;
    } catch (error) {
        console.error("Lỗi lấy sản phẩm bán chạy:", error);
        throw error;
    }
}

// 🟢 Lấy báo cáo tổng số đơn hàng
export async function getOrderStats() {
    try {
        const response = await fetch(`${API_URL}/orders`);
        const data = await response.json();
        if (!response.ok) throw new Error(data.message || "Không thể lấy báo cáo đơn hàng");

        return data;
    } catch (error) {
        console.error("Lỗi lấy thống kê đơn hàng:", error);
        throw error;
    }
}
