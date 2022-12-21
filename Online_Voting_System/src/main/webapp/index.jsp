<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css"> 
<meta charset="UTF-8">
<title>Online Voting System</title>
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="form-container">
<!--form tag send a post request for the action voterLogin when we click on the login  -->
<form action ="voterLogin" method="post">
 <h2> Enter Voting Number</h2>
 <label for ="voterNumber" class="form-elements form-label">
 <b> Voter ID</b>
 </label>
 <br>
 <input name = "voterNumber" id="voterNumber" class="form-elements form-input"  type = "text" />
 <br>
 <button type = "submit" class="form-elements form-button">Login </button>
 <br>
 <a href="adminlogin.jsp">Admin</a>
 </form>
 </div>
 <br>
</body>
</html>