package com.rom4.departments.controller.department;

import com.rom4.departments.controller.Handler;
import com.rom4.departments.controller.common.PageUtil;
import com.rom4.departments.dao.DepartmentDAO;
import com.rom4.departments.dao.EmployeDAO;
import com.rom4.departments.exception.AppException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by rom4 on 08.07.14.
 * Creation time 15:09
 * Project name Departments
 */
public class DeleteDepartment implements Handler {
    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, DepartmentDAO depDAO, EmployeDAO empDAO) throws IOException, ServletException {
        String saveStatus;

        try {
            saveStatus = "Department deleted";
            depDAO.deleteDepartment(Integer.parseInt(request.getParameter("departmentID")));
            request.getSession().setAttribute("saveStatus", saveStatus);
            PageUtil.redirectToPage(request, response, "StatusPage.html");
        } catch (AppException a) {
            a.printStackTrace();
            PageUtil.redirectToErrorPage(request, response, a.getMessage());
        }


    }
}
