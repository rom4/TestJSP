package com.rom4.departments.controller.common;

import com.rom4.departments.controller.Handler;
import com.rom4.departments.service.dao.DepartmentService;
import com.rom4.departments.service.dao.EmployeeService;
import net.sf.oval.Validator;
import org.springframework.stereotype.Component;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by rom4 on 07.07.14.
 * Creation time 16:25
 * Project name Departments
 */
@Component("/contact.html")
public class Contacts implements Handler
{
    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        PageUtil.forwardToPage(request, response, "contacts.jsp");
    }
}
