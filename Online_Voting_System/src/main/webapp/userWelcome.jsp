<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css"> 
<meta charset="UTF-8">
<title>Welcome User</title>
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="form-container">
<form action="Vote" method="post">

<label for="voterNumber" class="form-elements-label"><b>Enter your card number</b></label>
<br>
<input id="voterNumber" name="voterNumber" class="form-elements form-input" type="text"/>
<br>

<label for="party" class="form-elements form-label"><b>Choose Your Party</b></label>
<br>

<input type="radio" id ="app" name="party" value="Aam Aadmi Party">
<label for="aap"><img class="party_img" alt="AAP" src="images/AAP.jpg">Aam Aadmi Party</label>
<br>
<input type="radio" id ="bjp" name="party" value="Bhartiya Janta Party">
<label for="bjp"><img class="party_img" alt="BJP" src="images/BJP.jpg">Bhartiya Janta Party</label>
<br>
<input type="radio" id ="congress" name="party" value="Congress">
<label for="congress"><img class="party_img" alt="Congress" src="images/Congress.png">Congress</label>
<br>

<button type ="Submit" class="form-elements for-button">Submit</button>
<br>

</form>
</div>
</body>
</html>