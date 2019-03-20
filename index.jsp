<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>        
<title>Shop Manager Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<script>
function validate()
{
       var f5=document.myForm.t5.value;
       var f6=document.myForm.t6.value;
       if( f5=="" && f6=="")
       {
              alert('Please enter username and password');
       }
       else if(f5=="" )
       {
              alert('Please enter username');
       }
       else if(f6=="")
       {
              alert('Please enter password');
       }
       return true;
}

</script>
        
    </head>
    <body>
    <div class = "container" style="width:550px">
		<div style="text-align:center;color:blue">
			<h3><b>Shop Manager Login</b></h3>
		</div>
		<c:url var="validateUrl" value="/manager/validate" />
            <form id="user_form" action="${validateUrl}" method="POST" class="well" name="myForm"  >
                <div class = "form-group">
                
				<span style="color:red">*</span> <label for = "User Id"> User Id:</label>
				<div style="margin-bottom: 25px" class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input type="text" id="t5"  name="username" class = "form-control"  placeholder='Enter the User Id' >
				</div>
				
				</div>
				<div class = "form-group">
				<span style="color:red">*</span> <label for = "password"> Password:</label>
				<div style="margin-bottom: 25px" class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				<input type="password" id="t6"  name="password" class = "form-control"  placeholder='Enter the Password' >
				</div>
				
				</div>
				
                <button id="confirm_user" type="submit" onclick="return validate()" class="btn btn-primary">Login</button>
                 <a href="registration.jsp"><button id="confirm_user1" type="button"  class="btn btn-primary">Register</button></a>
                  
            </form>	
        </div>
    </body>
</html>