package Validation;
import Entity.Premises;
import java.time.LocalDate;
import java.time.Period;
import java.util.HashMap;
import java.util.Map;

public class PremisesValidation {


    private static final String CODE_REGEX = "^[A-Z0-9]{3}-[A-Z0-9]{2}-[A-Z0-9]{2}$";

    public static Map<String, String> validate(Premises premises) {
        Map<String, String> errors = new HashMap<>();


        if (premises.getCode() == null || !premises.getCode().matches(CODE_REGEX)) {
            errors.put("code", "Mã mặt bằng phải đúng định dạng XXX-XX-XX (VD: ABC-12-34).");
        }


        if (premises.getArea() <= 20) {
            errors.put("area", "Diện tích phải lớn hơn 20m2.");
        }

        if (premises.getFloor() < 1 || premises.getFloor() > 15) {
            errors.put("floor", "Tầng phải nằm trong khoảng từ 1 đến 15.");
        }

        if (premises.getPrice() <= 1000000) {
            errors.put("price", "Giá tiền phải lớn hơn 1.000.000 VNĐ.");
        }


        if (premises.getStartDate() != null && premises.getEndDate() != null) {
            if (premises.getStartDate().isAfter(premises.getEndDate())) {
                errors.put("endDate", "Ngày kết thúc phải sau ngày bắt đầu.");
            } else {
                Period period = Period.between(premises.getStartDate(), premises.getEndDate());
                if (period.toTotalMonths() < 6) {
                    errors.put("endDate", "Ngày bắt đầu phải nhỏ hơn ngày kết thúc ít nhất là 6 tháng.");
                }
            }
        } else {
            errors.put("date", "Ngày bắt đầu và ngày kết thúc không được để trống.");
        }

        return errors;
    }
}
