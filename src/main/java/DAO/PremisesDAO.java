package DAO;
import Model.Database;
import Entity.Premises;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PremisesDAO {

    //lấy tên loại mặt bằng và sắp xếp theo diện tích
    private static final String SELECT_ALL_AND_SEARCH =
            "SELECT p.*, pt.name as type_name FROM premises p " +
                    "JOIN premises_type pt ON p.type_id = pt.id " +
                    "WHERE pt.id LIKE ? AND p.floor LIKE ? AND p.price <= ? " +
                    "ORDER BY p.area ASC";

    private static final String INSERT_PREMISES =
            "INSERT INTO premises (code, area, status, floor, type_id, price, start_date, end_date, description) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

    private static final String DELETE_PREMISES = "DELETE FROM premises WHERE code = ?";

    private static final String CHECK_CODE_EXISTS = "SELECT code FROM premises WHERE code = ?";

    // lấy danh sách và tìm kiếm
    public List<Premises> findAll(String typeIdSearch, String floorSearch, String priceSearch) {
        List<Premises> list = new ArrayList<>();

        String typeId = (typeIdSearch == null || typeIdSearch.isEmpty()) ? "%" : typeIdSearch;
        String floor = (floorSearch == null || floorSearch.isEmpty()) ? "%" : floorSearch;
        double price = (priceSearch == null || priceSearch.isEmpty()) ? Double.MAX_VALUE : Double.parseDouble(priceSearch);

        try (Connection conn = Database.connection();
             PreparedStatement ps = conn.prepareStatement(SELECT_ALL_AND_SEARCH)) {

            ps.setString(1, typeId);
            ps.setString(2, floor);
            ps.setDouble(3, price);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Premises p = new Premises();
                p.setCode(rs.getString("code"));
                p.setArea(rs.getDouble("area"));
                p.setStatus(rs.getString("status"));
                p.setFloor(rs.getInt("floor"));
                p.setTypeId(rs.getInt("type_id"));
                p.setTypeName(rs.getString("type_name"));
                p.setPrice(rs.getDouble("price"));
                p.setStartDate(rs.getDate("start_date").toLocalDate());
                p.setEndDate(rs.getDate("end_date").toLocalDate());
                p.setDescription(rs.getString("description"));
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

  //thêm
    public void insertPremises(Premises p) throws SQLException {
        try (Connection conn = Database.connection();
             PreparedStatement ps = conn.prepareStatement(INSERT_PREMISES)) {
            ps.setString(1, p.getCode());
            ps.setDouble(2, p.getArea());
            ps.setString(3, p.getStatus());
            ps.setInt(4, p.getFloor());
            ps.setInt(5, p.getTypeId());
            ps.setDouble(6, p.getPrice());
            ps.setDate(7, Date.valueOf(p.getStartDate()));
            ps.setDate(8, Date.valueOf(p.getEndDate()));
            ps.setString(9, p.getDescription());
            ps.executeUpdate();
        }
    }

    //xóa
    public boolean deletePremises(String code) {
        try (Connection conn = Database.connection();
             PreparedStatement ps = conn.prepareStatement(DELETE_PREMISES)) {
            ps.setString(1, code);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // kiểm tra
    public boolean isCodeExists(String code) {
        try (Connection conn = Database.connection();
             PreparedStatement ps = conn.prepareStatement(CHECK_CODE_EXISTS)) {
            ps.setString(1, code);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
