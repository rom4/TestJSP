package com.rom4.departments.controller.department;

import com.rom4.departments.controller.Handler;
import com.rom4.departments.controller.common.PageUtil;
import com.rom4.departments.dao.DepartmentDAO;
import com.rom4.departments.dao.EmployeDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by rom4 on 03.07.14.
 * Creation time 12:19
 * Project name Departments
 */
public class AddDepartment implements Handler {
    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, DepartmentDAO depDAO, EmployeDAO empDAO) throws IOException, ServletException {

        request.setAttribute("pageType", "add");
        PageUtil.forwardToPage(request, response, "EditDepartment.jsp");
    }
}
