<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
<link rel="stylesheet" type="text/css" href="style.css">

<% 
	String a[] = new String[100] ;
	for(int i=0;i<100 ;i++)
	{
		a[i]="0" ;
	}
	Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevoting","root","Sarang@123");
	PreparedStatement preparedStatement = con.prepareStatement("select party,count(party) as votecount from vote group by party");
	ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select party,count(party) as votecount from vote group by party");
	
	int i=0 ;
	while(rs.next()){
		if(rs.getString("party").equals("Aam Aadmi Party"))
		{
			a[0]=rs.getString("votecount");
		}
		if(rs.getString("party").equals("Bhartiya Janta Party"))
		{
			a[1]=rs.getString("votecount");
		}
		if(rs.getString("party").equals("Congress"))
		{
			a[2]=rs.getString("votecount");
		}
	}
%>

</head>
<%@ include file="adminNavbar.jsp" %>
<body>
<div class="form-container">
<div class="checkTable">
<table>
<tr>
	<th>
	Parties
	</th>
	<th>
	Names
	</th>
	<th>
	Votes
	</th>
</tr> 

<tr>
	<td>
	<img src="images/AAP.jpg" alt="AAP">
	</td>
	<td> Aam Aadmi Party</td>
	<td><%=a[0] %></td>
</tr>
<tr>
	<td>
	<img src="images/BJP.jpg" alt="BJP">
	</td>
	<td> Bhartiya Janta Party</td>
	<td><%=a[1] %></td>
</tr>
<tr>
	<td>
	<img src="images/Congress.png" alt="Congress">
	</td>
	<td> Congress</td>
	<td><%=a[2] %></td>
</tr>
</table>
</div>
</div>

</body>
</html>