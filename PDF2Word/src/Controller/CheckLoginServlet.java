package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BO.CheckLoginBO;
import Model.BO.GetUserBO;
import Model.Bean.user;

@WebServlet("/CheckLoginServlet")
public class CheckLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CheckLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equals("") || password.equals("")) {
			//js error
			response.sendRedirect("LoginServlet");
		}else {
			if(CheckLoginBO.CheckLogin(username, password)) {
				user user = GetUserBO.GetUser(username);
				request.getSession().setAttribute("user", user);
				request.getSession().setAttribute("message", "Đăng nhập thành công!");
				response.sendRedirect("HomePage.jsp");
				
			}else {
				//js login fail
				request.getSession().setAttribute("message", "Có lỗi xảy ra, vui lòng kiểm tra lại thông tin tài khoản!");
				response.sendRedirect("LoginServlet");
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
