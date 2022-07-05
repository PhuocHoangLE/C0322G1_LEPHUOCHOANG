package model.Facility;

public class Facility {
    private int facilityId ;
    private String facilityName ;
    private int facilityArea ;
    private double facilityCost ;
    private int facilityRentTypeId ;
    private int facilityTypeId ;
    private String standardRoom ;
    private String descriptionOtherCovenience ;
    private double poolArea ;
    private int numberOffFloors ;
    private int facility ;

    public Facility() {
    }

    public Facility(int facilityId, String facilityName, int facilityArea, double facilityCost, int facilityRentTypeId, int facilityTypeId, String standardRoom, String descriptionOtherCovenience, double poolArea, int numberOffFloors, int facility) {
        this.facilityId = facilityId;
        this.facilityName = facilityName;
        this.facilityArea = facilityArea;
        this.facilityCost = facilityCost;
        this.facilityRentTypeId = facilityRentTypeId;
        this.facilityTypeId = facilityTypeId;
        this.standardRoom = standardRoom;
        this.descriptionOtherCovenience = descriptionOtherCovenience;
        this.poolArea = poolArea;
        this.numberOffFloors = numberOffFloors;
        this.facility = facility;
    }

    public int getFacilityId() {
        return facilityId;
    }

    public void setFacilityId(int facilityId) {
        this.facilityId = facilityId;
    }

    public String getFacilityName() {
        return facilityName;
    }

    public void setFacilityName(String facilityName) {
        this.facilityName = facilityName;
    }

    public int getFacilityArea() {
        return facilityArea;
    }

    public void setFacilityArea(int facilityArea) {
        this.facilityArea = facilityArea;
    }

    public double getFacilityCost() {
        return facilityCost;
    }

    public void setFacilityCost(double facilityCost) {
        this.facilityCost = facilityCost;
    }

    public int getFacilityRentTypeId() {
        return facilityRentTypeId;
    }

    public void setFacilityRentTypeId(int facilityRentTypeId) {
        this.facilityRentTypeId = facilityRentTypeId;
    }

    public int getFacilityTypeId() {
        return facilityTypeId;
    }

    public void setFacilityTypeId(int facilityTypeId) {
        this.facilityTypeId = facilityTypeId;
    }

    public String getStandardRoom() {
        return standardRoom;
    }

    public void setStandardRoom(String standardRoom) {
        this.standardRoom = standardRoom;
    }

    public String getDescriptionOtherCovenience() {
        return descriptionOtherCovenience;
    }

    public void setDescriptionOtherCovenience(String descriptionOtherCovenience) {
        this.descriptionOtherCovenience = descriptionOtherCovenience;
    }

    public double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(double poolArea) {
        this.poolArea = poolArea;
    }

    public int getNumberOffFloors() {
        return numberOffFloors;
    }

    public void setNumberOffFloors(int numberOffFloors) {
        this.numberOffFloors = numberOffFloors;
    }

    public int getFacility() {
        return facility;
    }

    public void setFacility(int facility) {
        this.facility = facility;
    }
}
