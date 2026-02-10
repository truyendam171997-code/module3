<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html>
<head>
    <title>Danh sách mặt bằng TComplex</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">
<h2 class="text-center">QUẢN LÝ MẶT BẰNG TCOMPLEX</h2>

<div class="card p-3 my-3 bg-light">
    <form action="/premises" method="get" class="row g-3">
        <div class="col-md-3">
            <label class="form-label">Loại mặt bằng</label>
            <select name="typeIdSearch" class="form-select">
                <option value="">-- Tất cả --</option>
                <option value="1">Văn phòng chia sẻ</option>
                <option value="2">Văn phòng trọn gói</option>
            </select>
        </div>
        <div class="col-md-3">
            <label class="form-label">Tầng</label>
            <input type="number" name="floorSearch" class="form-control" placeholder="Nhập tầng...">
        </div>
        <div class="col-md-3">
            <label class="form-label">Giá tối đa (VNĐ)</label>
            <input type="number" name="priceSearch" class="form-control" placeholder="Nhập giá...">
        </div>
        <div class="col-md-3 d-flex align-items-end">
            <button type="submit" class="btn btn-primary w-100">Tìm kiếm</button>
        </div>
    </form>
</div>

<a href="/premises?action=create" class="btn btn-success mb-3">Thêm mới mặt bằng</a>

<table class="table table-bordered table-striped">
    <thead class="table-dark">
    <tr>
        <th>Mã MB</th>
        <th>Diện tích (m2)</th>
        <th>Trạng thái</th>
        <th>Tầng</th>
        <th>Loại văn phòng</th>
        <th>Giá cho thuê</th>
        <th>Ngày bắt đầu</th>
        <th>Ngày kết thúc</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${premisesList}" var="p">
        <tr>
            <td>${p.code}</td>
            <td>${p.area}</td> <td>${p.status}</td>
            <td>${p.floor}</td>
            <td>${p.typeName}</td>
            <td>
                <fmt:formatNumber value="${p.price}" pattern="#,###" /> VNĐ
            </td>
            <td>${p.startDate}</td>
            <td>${p.endDate}</td>
            <td>
                <button class="btn btn-danger btn-sm"
                        onclick="confirmDelete('${p.code}')">Xóa</button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<script>
    function confirmDelete(id) {
        if (confirm("Bạn có chắc chắn muốn xóa mặt bằng với mã số " + id + " không?")) {
            window.location.href = "/premises?action=delete&id=" + id;
        }
    }
</script>
</body>
</html>