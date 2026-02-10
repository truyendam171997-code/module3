package Service;

import DAO.PremisesDAO;
import Entity.Premises;
import Validation.PremisesValidation;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class PremisesService {
    private PremisesDAO premisesDAO = new PremisesDAO();


    public List<Premises> findAll(String typeIdSearch, String floorSearch, String priceSearch) {
        return premisesDAO.findAll(typeIdSearch, floorSearch, priceSearch);
    }

    // thêm
    public String save(Premises p) {
        Map<String, String> errors = PremisesValidation.validate(p);
        if (!errors.isEmpty()) {
            return errors.values().iterator().next();
        }
        if (premisesDAO.isCodeExists(p.getCode())) {
            return "Mã mặt bằng vừa thêm đã tồn tại";
        }
        try {
            premisesDAO.insertPremises(p);
            return null;
        } catch (SQLException e) {
            e.printStackTrace();
            return "Lỗi hệ thống: Không thể kết nối cơ sở dữ liệu.";
        }
    }

    // xóa
    public boolean delete(String code) {
        return premisesDAO.deletePremises(code);
    }
}