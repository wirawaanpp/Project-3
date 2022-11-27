<%@ page import ="java.sql.*" %>
<%
	 
    String user = request.getParameter("username");    
    String pwd = request.getParameter("password");
    String firstname = request.getParameter("firstname"); 
	String lastname = request.getParameter("lastname"); 
	String address = request.getParameter("address");
	String phone = request.getParameter("phone"); 
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytask",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into cust( username, password, firstname, lastname, address, phone, email) values ('" +user+ "','" +pwd+ "','" +firstname+ "','" +lastname+ "','" + address + "','" +phone + "','" +email+ "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>