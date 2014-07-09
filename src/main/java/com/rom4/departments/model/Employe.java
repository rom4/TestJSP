package com.rom4.departments.model;




import com.rom4.departments.connection.ConnectionInstance;
import com.rom4.departments.dao.DAOFactory;
import com.rom4.departments.dao.EmployeDAO;
import com.rom4.departments.exception.AppExcepption;
import net.sf.oval.Validator;
import net.sf.oval.constraint.*;
import net.sf.oval.exception.ConstraintsViolatedException;
import net.sf.oval.guard.Guarded;

import java.util.*;

/**
 * Created by rom4 on 02.07.14.
 */


@Guarded
public class Employe {

    private Integer employeID;
    @NotEmpty
    @ValidateWithMethod(methodName = "checkFirstNameUnique" , parameterType = String.class, errorCode = "10")
    private String firstName = null;
    private String lastName = null;
    private String email = null;
    private float salary = 0.0F;
    private Date birthday = null;
    private Integer departmentID = 0;

    public Employe() {
    }

    private boolean checkFirstNameUnique (String firstName) {
        EmployeDAO dao = DAOFactory.getEmployeDAO();

        try {
            List<Employe> employes = dao.getEmployes();
            for (Employe e:employes) {
                if (e.getFirstName().equals(firstName)) {
                    return false;
                }
            }
        } catch (AppExcepption appExcepption) {
            appExcepption.printStackTrace();
            return false;
        }

        return true;
    }

    public Integer getEmployeID() {
        return employeID;
    }

    public void setEmployeID(@NotNull Integer employeID) {
        this.employeID = employeID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(@NotNull String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }

    public java.util.Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getDepartmentID() {
        return departmentID;
    }

    public void setDepartmentID(Integer departmentID) {
        this.departmentID = departmentID;
    }

    @Override
    public String toString() {
        return "Employe{" +
                "employeID=" + employeID +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", salary=" + salary +
                ", birthday=" + birthday +
                ", departmentID=" + departmentID +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Employe)) return false;

        Employe employe = (Employe) o;

        if (employeID != employe.employeID) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return employeID;
    }

    public static void main (String args[]) {
        Employe e = new Employe();

        e.setEmployeID(null);
        e.setFirstName(null);

        //throw new ConstraintsViolatedException();

       /* Validator validator = new net.sf.oval.Validator();
        java.util.List violations = validator.validate(e);
*/
      /*  if (!violations.isEmpty()) {
            System.out.println(violations.get(0));
            System.out.println(violations.get(0));
        }*/

    }
}
