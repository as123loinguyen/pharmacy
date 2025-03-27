

// script.js
const products = {
    "thuoc": [
        { img: "efferalgan.png", name: "Thuốc không kê đơn" },
        { img: "silkeron.png", name: "Thuốc kê đơn" },
        { img: "thuoc-khac.png", name: "Thuốc khác" }
    ],
    "tra-cuu-benh": [
        { img: "benh1.png", name: "Bệnh A" },
        { img: "benh2.png", name: "Bệnh B" }
    ],
    "thuc-pham": [
        { img: "vitamin.png", name: "Vitamin" },
        { img: "tpbs.png", name: "Thực phẩm bổ sung" }
    ]
};

function showProducts(category) {
    const productList = document.getElementById("product-list");
    productList.innerHTML = ""; 

    products[category]?.forEach(product => {
        const div = document.createElement("div");
        div.classList.add("product-item");
        div.innerHTML = `<img src="${product.img}" alt="${product.name}"><p>${product.name}</p>`;
        productList.appendChild(div);
    });

    document.querySelectorAll(".menu-item").forEach(item => item.classList.remove("active"));
    document.querySelector(`.menu-item[onclick="showProducts('${category}')"]`).classList.add("active");
    
}

