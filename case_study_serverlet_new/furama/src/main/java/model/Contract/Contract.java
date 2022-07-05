package model.Contract;

import java.time.format.DateTimeParseException;
import java.util.Date;

public class Contract {
    private int contractId ;
    private Date contractStartDate ;
    private Date contractEndDate ;
    private double contractDeposit ;

    private int contractEmployeeId ;
    private int contractCustomerId ;
    private int contractFacilityId ;

    public Contract() {
    }

    public Contract(int contractId, Date contractStartDate, Date contractEndDate, double contractDeposit, int contractEmployeeId, int contractCustomerId, int contractFacilityId) {
        this.contractId = contractId;
        this.contractStartDate = contractStartDate;
        this.contractEndDate = contractEndDate;
        this.contractDeposit = contractDeposit;
        this.contractEmployeeId = contractEmployeeId;
        this.contractCustomerId = contractCustomerId;
        this.contractFacilityId = contractFacilityId;
    }

    public int getContractId() {
        return contractId;
    }

    public void setContractId(int contractId) {
        this.contractId = contractId;
    }

    public Date getContractStartDate() {
        return contractStartDate;
    }

    public void setContractStartDate(Date contractStartDate) {
        this.contractStartDate = contractStartDate;
    }

    public Date getContractEndDate() {
        return contractEndDate;
    }

    public void setContractEndDate(Date contractEndDate) {
        this.contractEndDate = contractEndDate;
    }

    public double getContractDeposit() {
        return contractDeposit;
    }

    public void setContractDeposit(double contractDeposit) {
        this.contractDeposit = contractDeposit;
    }

    public int getContractEmployeeId() {
        return contractEmployeeId;
    }

    public void setContractEmployeeId(int contractEmployeeId) {
        this.contractEmployeeId = contractEmployeeId;
    }

    public int getContractCustomerId() {
        return contractCustomerId;
    }

    public void setContractCustomerId(int contractCustomerId) {
        this.contractCustomerId = contractCustomerId;
    }

    public int getContractFacilityId() {
        return contractFacilityId;
    }

    public void setContractFacilityId(int contractFacilityId) {
        this.contractFacilityId = contractFacilityId;
    }
}
