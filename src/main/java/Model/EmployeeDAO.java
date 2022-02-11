package Model;

import Bean.RegistrationForm;
import POJOClass.Employee;
import java.sql.*;
import java.util.*;
public class EmployeeDAO {
    // Fetch all Employees
    public List<Employee> getEmployees(){
        List<Employee> employees=new ArrayList<>();
        String query="select * from employees order by Id";
        Connection con=DBConnect.getConnection();
        try {
            Statement stmt = con.createStatement();
            ResultSet result=stmt.executeQuery(query);
            while (result.next()){
                Employee emp=new Employee();
                emp.setEmpId(result.getInt(1));
                emp.setEmpName(result.getString(2));
                emp.setDepartment(result.getString(3));
                emp.setSalary(result.getInt(4));
                emp.setAge(result.getInt(5));
                emp.setMobile(result.getLong(6));
                employees.add(emp);
            }
            result.close();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println(" Error on Getting Employees");
        }
        try {
            con.close();
        } catch (SQLException e) {}
        return employees;
    }

    // Fetch Employees With Vehicle
    public List<Employee> getEmpWithVehicle(){
        List<Employee> employees=new ArrayList<>();
        String query="select e.Id,e.Name,ev.VehicleCompName,ev.VehicleRegNo from employees as e inner join empVehicles as ev on e.Id=ev.EmpId order by e.Id";
        Connection con=DBConnect.getConnection();
        try {
            Statement stmt = con.createStatement();
            ResultSet result=stmt.executeQuery(query);
            while (result.next()){
                Employee emp=new Employee();
                emp.setEmpId(result.getInt(1));
                emp.setEmpName(result.getString(2));
                emp.setVehicleName(result.getString(3));
                emp.setVehicleRegNo(result.getString(4));
                employees.add(emp);
            }
            result.close();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println(" Error on Getting Employees With Vehicle");
        }
        try {
            con.close();
        } catch (SQLException e) {}
        return employees;
    }

    //Add new Employee
    public int addEmployee(RegistrationForm emp){
        String query="insert into employees(Name,Department,Salary,Age,Mobile) values(?,?,?,?,?) ";
        Connection con=DBConnect.getConnection();
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            String name=emp.getEmpName();
            String department=emp.getDepartment();
            int salary=emp.getSalary();
            int age=emp.getAge();
            long mobile=emp.getMobile();
            stmt.setString(1,name);
            stmt.setString(2,department);
            stmt.setInt(3,salary);
            stmt.setInt(4,age);
            stmt.setLong(5,mobile);
            int rows=stmt.executeUpdate();
            System.out.println(rows+" rows inserted");
        }catch (Exception e){
            e.printStackTrace();
            System.out.println(" Error While Inserting Employee");
            return 0;
        }
        try {
            con.close();
        } catch (SQLException e) {};
        return 1;
    }

    //Fetch an Employee details
    public Employee getEmployee(int id){
        Employee emp=new Employee();
        String query="select * from employees where Id=?";
        Connection con=DBConnect.getConnection();
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setInt(1,id);
            ResultSet result=stmt.executeQuery();
            if(result.next()){
                emp.setEmpId(result.getInt(1));
                emp.setEmpName(result.getString(2));
                emp.setDepartment(result.getString(3));
                emp.setSalary(result.getInt(4));
                emp.setAge(result.getInt(5));
                emp.setMobile(result.getLong(6));
            }
            result.close();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println(" Error on Getting Employee BY ID");
        }
        try {
            con.close();
        } catch (SQLException e) {}
        return emp;
    }
}
