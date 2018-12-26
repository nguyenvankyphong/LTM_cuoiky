package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.User;
import model.dao.UserDAO;

@WebServlet("/dang-nhap")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO = new UserDAO();
       
    public LoginController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("Login.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		System.out.println("ok");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println("username: " + username + "pass: "+ password );
		
		User user = userDAO.getItem(username, password);
		System.out.println(user.getEmail());
		if(user != null) {
			System.out.println("ok");
			request.getSession().setAttribute("user", user);
			response.sendRedirect(request.getContextPath() + "/");	
		}
	}

}
