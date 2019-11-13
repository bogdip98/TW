

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	    String username = request.getParameter("username");
	    String parola = request.getParameter("parola");
	    String email = request.getParameter("email");
	    String adresa = request.getParameter("adresa");
	    String varsta = request.getParameter("varsta");
	    String sex = request.getParameter("sex");
	    try {
	      Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testtw","root","");
	      Statement stmt = con.createStatement();
	      stmt.executeUpdate("insert into user_reg (uname, upass, uemail, adresa, varsta, sex) "
		      		+ "values('"+username+"','"+parola+"','"+email+"','"+adresa+"','"+varsta+"','"+sex+"');");
	      response.sendRedirect("pacient.jsp");
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }			
	}

}
