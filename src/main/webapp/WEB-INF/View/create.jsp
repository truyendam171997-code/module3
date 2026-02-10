<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Thêm mới mặt bằng</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">
<div class="row justify-content-center">
    <div class="col-md-6 border p-4 shadow">
        <h3 class="text-center text-success">THÊM MỚI MẶT BẰNG</h3>

        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>

        <form action="/premises?action=create" method="post">
            <div class="mb-3">
                <label class="form-label">Mã mặt bằng (*)</label>
                <input type="text" name="code" class="form-control" required
                       pattern="^[A-Z0-9]{3}-[A-Z0-9]{2}-[A-Z0-9]{2}$"
                       title="Định dạng đúng: XXX-XX-XX (VD: MB1-A2-B3)">
            </div>

            <div class="mb-3">
                <label class="form-label">Diện tích (m2) (*)</label>
                <input type="number" name="area" class="form-control" min="20.1" step="0.1" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Trạng thái (*)</label>
                <select name="status" class="form-select" required>
                    <option>Trống</option>
                    <option>Hạ tầng</option>
                    <option>Đầy đủ</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Tầng (*)</label>
                <input type="number" name="floor" class="form-control" min="1" max="15" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Loại văn phòng (*)</label>
                <select name="typeId" class="form-select" required>
                    <option value="1">Văn phòng chia sẻ</option>
                    <option value="2">Văn phòng trọn gói</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Giá cho thuê (VNĐ) (*)</label>
                <input type="number" name="price" class="form-control" min="1000001" required>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">Ngày bắt đầu (*)</label>
                    <input type="date" name="startDate" class="form-control" required>
                </div>
                <div class="col">
                    <label class="form-label">Ngày kết thúc (*)</label>
                    <input type="date" name="endDate" class="form-control" required>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Mô tả chi tiết</label>
                <textarea name="description" class="form-control" rows="3"></textarea>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary px-5">Lưu</button>
                <a href="/premises" class="btn btn-secondary px-5">Hủy</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>