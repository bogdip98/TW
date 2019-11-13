
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class AddProgramari
 */
@WebServlet("/AddProgramari")
public class AddProgramari extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProgramari() {
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
	    PrintWriter out = response.getWriter();
	    String nume = request.getParameter("nume");
	    out.print(nume);
	    String prenume = request.getParameter("prenume");
	    out.print(prenume);
	    String telefon = request.getParameter("telefon");
	    out.print(telefon);
	    String email = request.getParameter("email");
	    out.print(email);
	    String data = request.getParameter("data");
	    out.print(data);
	    String specializare = request.getParameter("specializare");
	    out.print(specializare);
	    String detalii = request.getParameter("detalii");
	    out.print(detalii);
	    try {
	      Class.forName("com.mysql.cj.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testtw","root","");
	      Statement stmt = con.createStatement();
	      stmt.executeUpdate("insert into programari (nume, prenume, telefon, adresa, data, specializare, detalii) "
		      		+ "values('"+nume+"','"+prenume+"','"+telefon+"','"+email+"','"+data+"','"+specializare+"','"+detalii+"');");
	      response.sendRedirect("pacient.jsp");
	    } catch (Exception e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }		
	}

}
