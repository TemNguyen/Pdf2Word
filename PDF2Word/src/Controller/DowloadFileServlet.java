package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DowloadFileServlet")
public class DowloadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DowloadFileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int fid = 0;
		
		try {
			fid = Integer.parseInt(request.getParameter("fid"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		if(fid != 0) {
			
		}else {
			//js error
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
