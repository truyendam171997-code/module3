package Entity;


import java.time.LocalDate;

public class Premises {

    private String code;
    private double area;
    private String status;
    private int floor;
    private int typeId;
    private String typeName;
    private double price;
    private LocalDate startDate;
    private LocalDate endDate;
    private String description;

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    ;

    public Premises(String code, double area, String status, int floor, int typeId, String typeName, double price, LocalDate startDate, LocalDate endDate, String description) {
        this.code = code;
        this.area = area;
        this.status = status;
        this.floor = floor;
        this.typeId = typeId;
        this.typeName = typeName;
        this.price = price;
        this.startDate = startDate;
        this.endDate = endDate;
        this.description = description;
    };
    public Premises(){}


}