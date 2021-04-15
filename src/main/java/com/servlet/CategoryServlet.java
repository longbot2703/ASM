package com.servlet;

import com.dao.CategoryDao;
import com.dao.ContactDao;
import com.model.CategoryEntity;
import com.model.ContactEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryServlet", urlPatterns = {"/category"})
public class CategoryServlet extends HttpServlet {
    CategoryDao dao = new CategoryDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CategoryEntity> lscate = dao.listCategory();
        request.setAttribute("lscate",lscate);
        request.getRequestDispatcher("ListCate.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryEntity cate = new CategoryEntity();
        cate.setName(request.getParameter("name"));
        cate.setTitle(request.getParameter("title"));
        cate.setUrl_image(request.getParameter("url-image"));

        dao.insertCategory(cate);
        doGet(request,response);
    }
}
