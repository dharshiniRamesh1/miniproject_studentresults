<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body>
<h1>Welcome to Dashboard</h1>
<%
String s = (String) session.getAttribute("na");
String s1 = (String) session.getAttribute("an");
Connection cn = null;
PreparedStatement ps = null;
ResultSet rs = null;

try {
    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "root");
    ps = cn.prepareStatement("select mark1,mark2 from studentmark where email=? and password = ?");
    ps.setString(1, s);
    ps.setString(2, s1);
    rs = ps.executeQuery();
    while(rs.next()) {
        int m1 = rs.getInt("mark1");
        int m2 = rs.getInt("mark2");
        //String stat= rs.getString("statu");
        
        out.println("Mark1 :" + m1);
        out.println("Mark2 :" + m2);
        //out.println("statu :" +stat);
    }
} catch (SQLException e) {
    e.printStackTrace();
} finally {
    if (rs != null) {
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    if (ps != null) {
        try {
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    if (cn != null) {
        try {
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
%>
</body>
<style>
body{
background-color: rgb(188, 143, 143);c

}
</style>
</html>



