-- Tạo database pharmacy_db
CREATE DATABASE IF NOT EXISTS pharmacy_db;
USE pharmacy_db;

-- Tạo bảng users (Quản lý khách hàng)
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL, -- Mật khẩu đơn giản để kiểm thử
    phone VARCHAR(20) UNIQUE NOT NULL,
    address TEXT,
    role ENUM('customer', 'admin') NOT NULL DEFAULT 'customer',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Chèn dữ liệu mẫu vào bảng users
INSERT INTO users (full_name, email, password_hash, phone, address, role) VALUES
('Nguyen Van A', 'nva@example.com', '12345678', '0987654321', '123 Đường A, Hà Nội', 'customer'),
('Tran Bao', 'baotran@example.com', 'baotran123', '0987123456', '456 Đường B, TP.HCM', 'customer'),
('Le Minh', 'leminh@example.com', 'password123', '0912345678', '789 Đường C, Đà Nẵng', 'customer'),
('Admin User', 'admin@example.com', 'adminpass', '0901234567', 'Admin Office, Hà Nội', 'admin'),
('Pham Hoa', 'phamhoa@example.com', 'hoa12345', '0981234567', '321 Đường D, Hải Phòng', 'customer'),
('Hoang An', 'hoangan@example.com', 'hoangan789', '0978123456', '654 Đường E, Cần Thơ', 'customer'),
('Dang Khoa', 'dangkhoa@example.com', 'khoa4567', '0967123456', '987 Đường F, Vũng Tàu', 'customer'),
('Nguyen Thu', 'nguyenthu@example.com', 'thu12345', '0958123456', '654 Đường G, Quy Nhơn', 'customer'),
('Ly Kha', 'lykha@example.com', 'kha5678', '0947123456', '321 Đường H, Nha Trang', 'customer'),
('Trinh Tuan', 'trinhtuan@example.com', 'tuan9999', '0936123456', '231 Đường I, Huế', 'customer'),
('Pham Hieu', 'phamhieu@example.com', 'hieu12345', '0923123456', '111 Đường J, Cà Mau', 'customer'),
('Nguyen My', 'nguyenmy@example.com', 'my98765', '0911123456', '222 Đường K, Bình Dương', 'customer'),
('Tran Dung', 'trandung@example.com', 'dung5678', '0909123456', '333 Đường L, Bình Phước', 'customer'),
('Le Kiet', 'lekiet@example.com', 'kiet1234', '0989123456', '444 Đường M, Tây Ninh', 'customer'),
('Vo An', 'voan@example.com', 'an9999', '0977123456', '555 Đường N, Đồng Nai', 'customer'),
('Hoang Nam', 'hoangnam@example.com', 'nam6543', '0966123456', '666 Đường O, Phú Yên', 'customer'),
('Bui Lan', 'builan@example.com', 'lan3210', '0955123456', '777 Đường P, Quảng Ngãi', 'customer'),
('Pham Cuong', 'phamcuong@example.com', 'cuong456', '0944123456', '888 Đường Q, Sóc Trăng', 'customer'),
('Nguyen Kha', 'nguyenkha@example.com', 'kha7890', '0933123456', '999 Đường R, Bạc Liêu', 'customer'),
('Tran Vu', 'tranvu@example.com', 'vu123456', '0922123456', '101 Đường S, Long An', 'customer'),
('Hoang Tien', 'hoangtien@example.com', 'tien65432', '0910123456', '102 Đường T, Kiên Giang', 'customer'),
('Le Thao', 'lethao@example.com', 'thao78901', '0908123456', '103 Đường U, Hậu Giang', 'customer'),
('Nguyen Ha', 'nguyenha@example.com', 'ha45678', '0988123456', '104 Đường V, An Giang', 'customer'),
('Pham Tuan', 'phamtuan@example.com', 'tuan34567', '0976123456', '105 Đường W, Đồng Tháp', 'customer'),
('Vo Minh', 'vominh@example.com', 'minh23456', '0964123456', '106 Đường X, Cà Mau', 'customer'),
('Bui Hoa', 'buihoa@example.com', 'hoa12345', '0952123456', '107 Đường Y, Vĩnh Long', 'customer'),
('Tran Khang', 'trankhang@example.com', 'khang56789', '0940123456', '108 Đường Z, Bến Tre', 'customer'),
('Nguyen Vy', 'nguyenvy@example.com', 'vy45678', '0938123456', '109 Đường AA, Tiền Giang', 'customer'),
('Le Hien', 'lehien@example.com', 'hien34567', '0926123456', '110 Đường BB, Trà Vinh', 'customer'),
('Hoang Long', 'hoanglong@example.com', 'long23456', '0914123456', '111 Đường CC, Cần Thơ', 'customer'),
('Pham Binh', 'phambinh@example.com', 'binh12345', '0902123456', '112 Đường DD, Hậu Giang', 'customer'),
('Vo Tien', 'votien@example.com', 'tien65432', '0981123456', '113 Đường EE, An Giang', 'customer'),
('Bui Cuong', 'buicuong@example.com', 'cuong78901', '0970123456', '114 Đường FF, Đồng Tháp', 'customer'),
('Tran Duy', 'tranduy@example.com', 'duy45678', '0968123456', '115 Đường GG, Cà Mau', 'customer'),
('Nguyen Kiet', 'nguyenkiet@example.com', 'kiet34567', '0956123456', '116 Đường HH, Vĩnh Long', 'customer'),
('Dang Hoa', 'danghoa@example.com', 'hoa67890', '0945123456', '117 Đường II, Bến Tre', 'customer'),
('Tran Linh', 'tranlinh@example.com', 'linh98765', '0931123456', '118 Đường JJ, Tiền Giang', 'customer'),
('Nguyen Hung', 'nguyenhung@example.com', 'hung12345', '0927123456', '119 Đường KK, Trà Vinh', 'customer'),
('Le Nam', 'lenam@example.com', 'nam45678', '0913123456', '120 Đường LL, Cần Thơ', 'customer'),
('Vo Lan', 'volan@example.com', 'lan78901', '0904123456', '121 Đường MM, Hậu Giang', 'customer'),
('Bui Minh', 'buiminh@example.com', 'minh12345', '0982123456', '122 Đường NN, An Giang', 'customer'),
('Pham An', 'phaman@example.com', 'an65432', '0971123456', '123 Đường OO, Đồng Tháp', 'customer'),
('Nguyen Tuan', 'nguyentuan@example.com', 'tuan56789', '0969123456', '124 Đường PP, Cà Mau', 'customer'),
('Tran Kiet', 'trankiet@example.com', 'kiet45678', '0957123456', '125 Đường QQ, Vĩnh Long', 'customer'),
('Hoang Phu', 'hoangphu@example.com', 'phu78901', '0948123456', '126 Đường RR, Bến Tre', 'customer'),
('Le Thanh', 'lethanh@example.com', 'thanh98765', '0939123456', '127 Đường SS, Tiền Giang', 'customer'),
('Vo Hieu', 'vohieu@example.com', 'hieu67890', '0928123456', '128 Đường TT, Trà Vinh', 'customer'),
('Bui Khanh', 'buikhanh@example.com', 'khanh12345', '0915123456', '129 Đường UU, Cần Thơ', 'customer'),
('Pham Hoa', 'phamhoa2@example.com', 'hoa45678', '0905123456', '130 Đường VV, Hậu Giang', 'customer'),
('Nguyen Duong', 'nguyenduong@example.com', 'duong56789', '0983123456', '131 Đường WW, An Giang', 'customer');

INSERT INTO users (full_name, email, password_hash, phone, address, role)
SELECT CONCAT('User', id), 
       CONCAT('user', id, '@example.com'), 
       CONCAT('pass', id), 
       CONCAT('090', LPAD(id, 7, '0')), 
       CONCAT(id, ' Đường XYZ, Việt Nam'), 
       'customer'
FROM (SELECT a.N + b.N * 10 + c.N * 100 AS id
      FROM (SELECT 0 AS N UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) a,
           (SELECT 0 AS N UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3) b,
           (SELECT 0 AS N UNION ALL SELECT 1) c
      LIMIT 40) numbers
WHERE id > 10 AND id <= 50;


-- Tạo bảng categories
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

-- Chèn dữ liệu mẫu vào bảng categories
INSERT INTO categories (name) VALUES
('Thuốc giảm đau'),
('Thuốc kháng sinh'),
('Vitamin & Khoáng chất'),
('Dụng cụ y tế'),
('Mỹ phẩm & Chăm sóc cá nhân'),
('Thuốc nhỏ mắt'),
('Dụng cụ y tế khác'),
('Khẩu trang & Bảo hộ'),
('Chăm sóc cơ xương khớp'),
('Chăm sóc cá nhân'),
('Thực phẩm chức năng'),
('Sản phẩm khác');

-- Tạo bảng products
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    category_id INT,
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- Chèn 50 bản ghi mẫu
INSERT INTO products (name, description, price, stock, category_id, image_url) VALUES
('Paracetamol 500mg', 'Thuốc giảm đau, hạ sốt.', 15000, 100, 1, 'https://example.com/images/paracetamol.jpg'),
('Vitamin C 500mg', 'Hỗ trợ tăng cường miễn dịch.', 20000, 80, 2, 'https://example.com/images/vitamin_c.jpg'),
('Aspirin 81mg', 'Thuốc chống đông máu liều thấp.', 30000, 50, 1, 'https://example.com/images/aspirin.jpg'),
('Ibuprofen 400mg', 'Giảm đau, kháng viêm.', 25000, 60, 1, 'https://example.com/images/ibuprofen.jpg'),
('Thuốc ho bổ phế', 'Giảm ho, bổ phổi.', 50000, 40, 3, 'https://example.com/images/thuoc_ho.jpg'),
('Omeprazole 20mg', 'Điều trị viêm loét dạ dày.', 45000, 70, 4, 'https://example.com/images/omeprazole.jpg'),
('Cetirizine 10mg', 'Chống dị ứng, giảm ngứa.', 18000, 90, 2, 'https://example.com/images/cetirizine.jpg'),
('Amoxicillin 500mg', 'Kháng sinh phổ rộng.', 60000, 30, 5, 'https://example.com/images/amoxicillin.jpg'),
('Chống say xe', 'Hỗ trợ giảm triệu chứng say tàu xe.', 12000, 110, 3, 'https://example.com/images/chong_say_xe.jpg'),
('Men vi sinh', 'Cân bằng hệ vi sinh đường ruột.', 35000, 85, 2, 'https://example.com/images/men_visinh.jpg'),
('Multivitamin', 'Cung cấp vitamin tổng hợp.', 70000, 40, 2, 'https://example.com/images/multivitamin.jpg'),
('Thuốc nhỏ mắt', 'Làm dịu và bảo vệ mắt.', 25000, 75, 6, 'https://example.com/images/thuoc_nho_mat.jpg'),
('Cồn sát trùng', 'Khử trùng vết thương ngoài da.', 15000, 120, 3, 'https://example.com/images/con_sat_trung.jpg'),
('Dầu gió xanh', 'Giảm đau đầu, cảm lạnh.', 30000, 65, 7, 'https://example.com/images/dau_gio.jpg'),
('Gạc y tế', 'Băng bó vết thương.', 12000, 100, 3, 'https://example.com/images/gac_yte.jpg'),
('Nước muối sinh lý', 'Sát khuẩn mũi, họng.', 10000, 150, 6, 'https://example.com/images/nuoc_muoi.jpg'),
('Panadol Extra', 'Giảm đau, hạ sốt nhanh.', 35000, 55, 1, 'https://example.com/images/panadol_extra.jpg'),
('Betadine', 'Dung dịch sát khuẩn.', 50000, 50, 3, 'https://example.com/images/betadine.jpg'),
('Xịt mũi kháng khuẩn', 'Làm sạch, thông mũi.', 45000, 45, 6, 'https://example.com/images/xit_mui.jpg'),
('Canxi D3', 'Bổ sung canxi, vitamin D3.', 90000, 60, 2, 'https://example.com/images/canxi_d3.jpg'),
('Thuốc đau dạ dày', 'Hỗ trợ giảm đau dạ dày.', 80000, 40, 4, 'https://example.com/images/thuoc_dau_da_day.jpg'),
('Vitamin E', 'Chống oxy hóa, đẹp da.', 60000, 70, 2, 'https://example.com/images/vitamin_e.jpg'),
('Khẩu trang y tế', 'Bảo vệ đường hô hấp.', 25000, 200, 7, 'https://example.com/images/khau_trang.jpg'),
('Gel rửa tay khô', 'Diệt khuẩn, bảo vệ tay.', 35000, 90, 3, 'https://example.com/images/gel_rua_tay.jpg'),
('Nhiệt kế điện tử', 'Đo nhiệt độ cơ thể.', 150000, 20, 8, 'https://example.com/images/nhiet_ke.jpg'),
('Viên sắt', 'Bổ sung sắt cho cơ thể.', 70000, 60, 2, 'https://example.com/images/vien_sat.jpg'),
('Tinh dầu tràm', 'Giảm ho, giữ ấm.', 45000, 80, 7, 'https://example.com/images/tinh_dau_tram.jpg'),
('Cao dán Salonpas', 'Giảm đau cơ, xương khớp.', 20000, 150, 9, 'https://example.com/images/salonpas.jpg'),
('Bông băng y tế', 'Băng bó vết thương.', 12000, 130, 3, 'https://example.com/images/bong_bang.jpg'),
('Thuốc nhỏ tai', 'Giảm đau, viêm tai.', 55000, 40, 6, 'https://example.com/images/thuoc_nho_tai.jpg'),
('Glucosamine', 'Hỗ trợ xương khớp.', 250000, 30, 10, 'https://example.com/images/glucosamine.jpg'),
('Acid Folic', 'Hỗ trợ phát triển thai nhi, ngăn ngừa dị tật.', 80000, 50, 2, 'https://example.com/images/acid_folic.jpg'),
('Thuốc bổ gan', 'Hỗ trợ chức năng gan, thải độc.', 120000, 40, 4, 'https://example.com/images/thuoc_bo_gan.jpg'),
('Máy đo huyết áp', 'Đo huyết áp tại nhà.', 850000, 15, 8, 'https://example.com/images/may_do_huyet_ap.jpg'),
('Collagen', 'Hỗ trợ làm đẹp da, chống lão hóa.', 300000, 25, 2, 'https://example.com/images/collagen.jpg'),
('Xịt họng kháng khuẩn', 'Giảm đau họng, sát khuẩn.', 60000, 55, 6, 'https://example.com/images/xit_hong.jpg'),
('Dung dịch vệ sinh phụ nữ', 'Vệ sinh vùng kín dịu nhẹ.', 75000, 60, 3, 'https://example.com/images/dung_dich_vs.jpg'),
('Vitamin B Complex', 'Bổ sung vitamin nhóm B.', 90000, 70, 2, 'https://example.com/images/vitamin_b.jpg'),
('Tinh dầu bạch đàn', 'Giảm nghẹt mũi, giữ ấm cơ thể.', 50000, 80, 7, 'https://example.com/images/tinh_dau_bach_dan.jpg'),
('Băng keo cá nhân', 'Che vết thương nhỏ.', 10000, 200, 3, 'https://example.com/images/bang_keo.jpg'),
('Siro ho trẻ em', 'Giảm ho, long đờm cho trẻ.', 65000, 45, 3, 'https://example.com/images/siro_ho.jpg'),
('Dụng cụ đo đường huyết', 'Kiểm tra lượng đường trong máu.', 600000, 10, 8, 'https://example.com/images/do_duong_huyet.jpg'),
('Nước súc miệng', 'Giúp làm sạch khoang miệng, khử mùi hôi.', 55000, 90, 3, 'https://example.com/images/nuoc_suc_mieng.jpg'),
('Kẽm Zinc 50mg', 'Hỗ trợ tăng cường miễn dịch, đẹp da.', 95000, 60, 2, 'https://example.com/images/kem_zinc.jpg'),
('Găng tay y tế', 'Dùng trong khám bệnh và phẫu thuật.', 45000, 150, 7, 'https://example.com/images/gang_tay.jpg'),
('Dầu nóng xoa bóp', 'Giảm đau nhức cơ, xương khớp.', 70000, 80, 7, 'https://example.com/images/dau_nong.jpg'),
('Kem chống nắng', 'Bảo vệ da khỏi tia UV.', 120000, 50, 2, 'https://example.com/images/kem_chong_nang.jpg'),
('Viên uống trắng da', 'Hỗ trợ làm sáng da, mờ thâm nám.', 350000, 40, 2, 'https://example.com/images/trang_da.jpg'),
('Bình xịt côn trùng', 'Diệt muỗi, gián, kiến.', 85000, 70, 3, 'https://example.com/images/binh_xit_con_trung.jpg'),
('Nước rửa mắt', 'Làm sạch, dịu mắt.', 65000, 60, 6, 'https://example.com/images/nuoc_rua_mat.jpg');


CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('pending', 'processing', 'completed', 'canceled') DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO orders (user_id, total_price, status) VALUES
(1, 150000, 'completed'),
(2, 450000, 'processing'),
(3, 120000, 'pending'),
(4, 89000, 'completed'),
(5, 670000, 'canceled'),
(6, 340000, 'pending'),
(7, 760000, 'processing'),
(8, 230000, 'completed'),
(9, 99000, 'canceled'),
(10, 150000, 'pending'),
(11, 300000, 'processing'),
(12, 250000, 'completed'),
(13, 470000, 'pending'),
(14, 92000, 'canceled'),
(15, 180000, 'completed'),
(16, 410000, 'processing'),
(17, 130000, 'pending'),
(18, 67000, 'canceled'),
(19, 540000, 'completed'),
(20, 250000, 'processing');

CREATE TABLE order_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO order_details (order_id, product_id, quantity, price) VALUES
(1, 5, 2, 150000),
(2, 8, 3, 450000),
(3, 12, 1, 120000),
(4, 3, 2, 89000),
(5, 6, 4, 670000),
(6, 14, 2, 340000),
(7, 9, 5, 760000),
(8, 2, 1, 230000),
(9, 11, 2, 99000),
(10, 7, 1, 150000),
(11, 16, 3, 300000),
(12, 19, 2, 250000),
(13, 1, 4, 470000),
(14, 10, 1, 92000),
(15, 13, 2, 180000),
(16, 4, 3, 410000),
(17, 18, 1, 130000),
(18, 15, 2, 67000),
(19, 20, 3, 540000),
(20, 17, 2, 250000);

CREATE TABLE statistics (
    id INT AUTO_INCREMENT PRIMARY KEY,
    total_sales DECIMAL(10,2),
    total_orders INT,
    total_customers INT,
    date DATE
);

CREATE TABLE reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO reviews (user_id, product_id, rating, comment) VALUES
(1, 5, 5, 'Sản phẩm rất tốt, tôi rất hài lòng.'),
(2, 8, 4, 'Chất lượng ổn, giao hàng nhanh.'),
(3, 12, 3, 'Tạm được, chưa thực sự ấn tượng.'),
(4, 3, 5, 'Sản phẩm đúng như mô tả, rất đáng tiền.'),
(5, 6, 2, 'Hơi thất vọng, sản phẩm không như kỳ vọng.'),
(6, 14, 4, 'Giao hàng nhanh, chất lượng tốt.'),
(7, 9, 5, 'Sản phẩm chất lượng cao, sẽ ủng hộ lần sau.'),
(8, 2, 3, 'Ổn nhưng có một số lỗi nhỏ.'),
(9, 11, 4, 'Giao hàng đúng hẹn, sản phẩm tốt.'),
(10, 7, 5, 'Cực kỳ hài lòng, đáng tiền.'),
(11, 16, 4, 'Hài lòng với chất lượng và giá cả.'),
(12, 19, 3, 'Ổn, nhưng có thể cải thiện hơn.'),
(13, 1, 2, 'Không hài lòng lắm, sản phẩm có lỗi.'),
(14, 10, 5, 'Sản phẩm tuyệt vời, sẽ mua lại.'),
(15, 13, 4, 'Chất lượng khá tốt, giá hợp lý.'),
(16, 4, 5, 'Hàng chuẩn, giao nhanh, tuyệt vời.'),
(17, 18, 3, 'Trung bình, không quá ấn tượng.'),
(18, 15, 4, 'Ổn áp, giá cả phù hợp.'),
(19, 20, 5, 'Rất thích, đáng giá từng đồng.'),
(20, 17, 2, 'Không như mong đợi, cần cải thiện.'),
(1, 3, 4, 'Hài lòng với sản phẩm, sẽ giới thiệu bạn bè.'),
(2, 6, 5, 'Tuyệt vời, đúng mô tả.'),
(3, 8, 3, 'Tạm ổn, chưa thực sự tốt.'),
(4, 14, 4, 'Khá ổn, không có gì để phàn nàn.'),
(5, 9, 5, 'Sản phẩm tuyệt vời, đáng giá từng xu.'),
(6, 2, 2, 'Không hài lòng, sản phẩm có vấn đề.'),
(7, 11, 4, 'Ổn áp, giao hàng nhanh chóng.'),
(8, 7, 5, 'Xuất sắc, sẽ mua lại lần nữa.'),
(9, 5, 3, 'Bình thường, không có gì nổi bật.'),
(10, 12, 4, 'Hài lòng với chất lượng, giá cả hợp lý.');


DROP DATABASE IF EXISTS pharmacy_db;
CREATE DATABASE pharmacy_db;
USE pharmacy_db;
