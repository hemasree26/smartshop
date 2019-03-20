<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
       <head> 
       <meta charset="utf-8"> 
       <title>Manager Registration Page</title> 
       <meta name="viewport" content="width=device-width, initial-scale=1"> 
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> 

       <script> 
       function validate()
       {
              var f1=document.myForm.t1.value;
              var f2=document.myForm.t2.value;
              var f3=document.myForm.t3.value;
              var f4=document.myForm.t4.value;
              var f5=document.myForm.t5.value;
              var f6=document.myForm.t6.value;
              var uid=f5.length;
              var pwd=f6.length;
              var f7=document.getElementById("t7");
              var gen=f7.options[f7.selectedIndex].value;
              
              
              if(f1==""  )
              {  
                     document.getElementById("namelocation").innerHTML="Please enter your  first name";
                     return false;

              }
              
              
              
              if(f2=="" )
              {  
                     document.getElementById("lastlocation").innerHTML="Please enter your  last name";
                     return false;
                   
              }
              
              
       
              if(f3=="")
              {  
                     document.getElementById("agelocation").innerHTML="Please enter your age";
                     return false;
                
              }
              else if(f3<18 || f3>45)
              {
                     document.getElementById("agelocation").innerHTML="Please enter age between 18 and 45";
                     return false;
                  
              }
              if(gen==0)
              {
            	  document.getElementById("genlocation").innerHTML="Please select gender";
            	  return false;
            	 
              }
              if(isNaN(f4))
              {
                     document.getElementById("conlocation").innerHTML="Please enter valid contact";
                     return false;
                    
              }  
              
              if(f5=="" )
              {  
                     document.getElementById("usrlocation").innerHTML="Please enter your userid";
                     return false;
                    
              }
              
              else if(f5<8 || f5>15)
              {
                     document.getElementById("usrlocation").innerHTML="Please enter userid  with 8 to 15 characters";
                     return false;
                   
              }
              if(f6=="")
              {  
                     document.getElementById("passlocation").innerHTML="Please enter your password";
                     return false;
                     
              }
              else if(f6<8 || f6>15)
              {
                     document.getElementById("passlocation").innerHTML="Please enter password with 8 to 15 characters";
                     return false;
                  
              }
              if( f1=="" || f2=="" || f3=="" || f4=="" || f5=="" || f6=="")
              {
                     alert('Please enter valid credentials');
                     return false;
              }
              return true;
       }
       </script> 
       </head> 
       <body> 

       <div class = "container" style="width:550px"> 
       <div style="text-align:center;color:blue"> 
       <h3><b>User Registration Form</b></h3> 
       </div> 
       
       <form name="myForm" novalidate role = "form" class="well" modelAttribute=""  action="manager1/registerProcess" method="post" onsubmit="return validate()"> 
       <div class = "form-group"> 
       <span style="color:red">*</span> <label for = "fname"> First Name </label> 
       <input type="text" id="t1" name="fname" class = "form-control" placeholder='Enter the First Name' required> 
       <span id="namelocation" style="color:red"></span>
       <br> 
       </div> 
       <div class = "form-group"> 
       <span style="color:red">*</span> <label for = "lname"> Last Name</label> 
       <input type="text" id="t2" name="lname" class = "form-control" placeholder='Enter the Last Name' required> 
       <span id="lastlocation" style="color:red"></span>
       <br> 
       </div> 
       <div class = "form-group"> 
       <span style="color:red">*</span> <label for = "age"> Age</label> 
       <input type="number" id="t3" name="age" class = "form-control" placeholder='Enter the Age' required> 
       <span id="agelocation" style="color:red"></span>
       <br> 
       </div>
       <div class="form-group">
        <span style="color:red">*</span> <label for = "gender"> Gender</label><br>
       <select name="gender" id="t7">
       <option  value="0">--Select--</option>
       <option value="male">Male</option>
       <option value="female">Female</option>
       </select>
       <span id="genlocation" style="color:red"></span>
       
       </div> 
       
       <div class = "form-group"> 
        <label for = "contact"> Contact</label> 
       <input type="number" id="t4" pattern="[1-9]{1}[0-9]{9}" name="contact" class = "form-control" placeholder='Enter the Contact Number' maxlength="10" required> 
       <span id="conlocation" style="color:red"></span>
       <br> 
       </div> 
       <div class = "form-group"> 
       <span style="color:red">*</span> <label for = "User Id"> User Id</label> 
       <input type="text" id="t5" name="userid" class = "form-control" placeholder='Enter the User Id' required> 
       <span id="usrlocation" style="color:red"></span>
       <br> 
       </div> 
       
       <div class = "form-group"> 
       <span style="color:red">*</span> <label for = "password"> Password</label> 
       <input type="password" id="t6" name="pwd" class = "form-control" placeholder='Enter the Password' required> 
       <span id="passlocation" style="color:red"></span>
       <br> 
       </div> 
       <br> 
       <input type="hidden"> 
       <input type="submit" class="btn btn-primary" value = "Submit"> 
       </form> 
       </div>
       </body> 
       </html> 
