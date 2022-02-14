package Bean;

import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.ValidatorForm;

import javax.servlet.ServletRequest;

public class AddVehicleForm extends ValidatorForm {
    String companyName,regNo;
    int empId;

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getRegNo() {
        return regNo;
    }

    public void setRegNo(String regNo) {
        this.regNo = regNo;
    }

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    @Override
    public void reset(ActionMapping mapping, ServletRequest request) {
        companyName="";
        regNo="";
        empId=0;
    }
}
