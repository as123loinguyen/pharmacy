document.addEventListener("DOMContentLoaded", function () {
    const filter = document.getElementById("filter-status");
    const rows = document.querySelectorAll("#order-list tr");

    filter.addEventListener("change", function () {
        const selectedStatus = this.value;
        rows.forEach(row => {
            if (selectedStatus === "all" || row.dataset.status === selectedStatus) {
                row.style.display = "table-row";
            } else {
                row.style.display = "none";
            }
        });
    });
});
