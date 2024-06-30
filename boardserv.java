package studentmarklogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/boardserv")
public class boardserv extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		PrintWriter pw  = res.getWriter();
		
		RequestDispatcher re = req.getRequestDispatcher("generalreg.html");
		re.include(req, res);
		
		
			HttpSession hst = req.getSession(false);
			if(hst!=null) {

				String s = (String) hst.getAttribute("na");
				String s1 = (String) hst.getAttribute("an");
				
				pw.println("welcome to dahboard");
				try {
					String str = "select mark1,mark2,statu from studentmark where email=? and password = ?";
					Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","root");
					PreparedStatement ps = cn.prepareStatement(str);
					
					ps.setString(1, s);
					ps.setString(2, s1);
					ResultSet rs = ps.executeQuery();
					int m1 = 7,m2 = 2;
					String stat = null;
					while(rs.next()) {
						m1 = rs.getInt("mark1");
						 m2 = rs.getInt("mark2");
						 stat = rs.getString("statu");
			
					    req.getRequestDispatcher("result.jsp").include(req, res);
						
					}

					HttpSession hs = req.getSession();
					hs.setAttribute("mark1", m1);
					hs.setAttribute("mark2", m2);
					hs.setAttribute("statu", stat);
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else {
				
					pw.print("Oops!!!... you need to login first");
				
			}
		
	}

}
