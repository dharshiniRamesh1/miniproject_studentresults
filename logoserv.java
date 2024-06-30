package studentmarklogin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logoserv")
public class logoserv extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter pw = res.getWriter();
		RequestDispatcher r = req.getRequestDispatcher("generalreg.html");
		r.include(req, res);
		
		HttpSession hp = req.getSession();
	       hp.getAttribute("na");
	       hp.invalidate();
		
	       pw.println("logged out");
		
	}

}
