package Controller;

import Bean.AddVehicleForm;
import Bean.RegistrationForm;
import Model.EmployeeDAO;
import POJOClass.Employee;
import org.apache.struts.action.*;
import org.apache.struts.actions.MappingDispatchAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class EmployeesController extends MappingDispatchAction {
    //Display Employees
    public ActionForward getEmployees(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Employee> empList= new EmployeeDAO().getEmployees();
        System.out.println(empList.size());
        if(empList.size()>0){
            request.setAttribute("employeesList",empList);
            return mapping.findForward("displayEmployees");
        }
        return mapping.findForward("emptyRecord");
    }

    //Display Employees and Their Vehicles
    public ActionForward getEmpWithVeh(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Employee> employees=new EmployeeDAO().getEmpWithVehicle();
        if(employees.size()>0){
            request.setAttribute("employeesList",employees);
            return mapping.findForward("disEmpWithVeh");
        }
        return mapping.findForward("emptyRecord");
    }

    //Add new Employee
    public ActionForward addEmployee(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        RegistrationForm employee=(RegistrationForm) form;
        int result=new EmployeeDAO().addEmployee(employee);
        if(result==1) {
            employee.reset(mapping,request);
            request.setAttribute("success","Registered Successfully");
            return mapping.findForward("success");
        }
        request.setAttribute("failed","Registration Failed Pls Try Again Later");
        return mapping.findForward("failed");
    }
    //Fetch an Employee details
    public ActionForward getEmployee(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        if(request.getParameter("id")==""){
            request.setAttribute("empIdEmpty","Id required");
            return mapping.findForward("error");
        }
        int empId=Integer.parseInt(request.getParameter("id"));
        Employee employee=new EmployeeDAO().getEmployee(empId);
        if(employee.getEmpId()>0){
            request.setAttribute("employee",employee);
            return mapping.findForward("displayDetails");
        }
        request.setAttribute("userNotFound","UserNotFound");
        return mapping.findForward("userNotFound");
    }

    //Add Vehicle
    public ActionForward addVehicle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        int empId= Integer.parseInt(request.getParameter("empId"));
        Employee employee=new EmployeeDAO().getEmployee(empId);
        if(employee.getEmpId()==0){
            request.setAttribute("empIdNotFound","Employee Id Not Found");
            return mapping.findForward("empIdNotFound");
        }
        AddVehicleForm vehicle=(AddVehicleForm) form;
        new EmployeeDAO().addVehicle(empId,vehicle);
        vehicle.reset(mapping,request);
        request.setAttribute("success","Vehicle Added Successfully");
        return mapping.findForward("success");
    }
}
