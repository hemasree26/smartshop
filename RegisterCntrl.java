package com.manager.spring.hibernate.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.manager.spring.hibernate.pojo.Manager1;
import com.manager.spring.hibernate.service.AuthService;
 
@Component
@Controller
@RequestMapping("/manager1")
public class RegisterCntrl {
	
    @Autowired
    private AuthService registerService; 
    
    // This will auto-inject the authentication service into the controller.
 
    
    
    public ModelAndView redirectregister()
    {
    	return new ModelAndView("register");
    }
 
    
    // Checks if the user credentials are valid or not.
    
    @RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
  
    //public ModelAndView registerUsr(@RequestParam("fname")String first_name,@RequestParam("lname")String last_name,@RequestParam("age")int age,@RequestParam("gender")String gender,@RequestParam("contact")int contact_number, @RequestParam("userid")String userid,@RequestParam("pwd")String password)
    public ModelAndView registerUsr(@RequestParam("fname")String first_name,@RequestParam("lname")String last_name,@RequestParam("age")int age,@RequestParam("gender")String gender,@RequestParam("contact")String contact_number, @RequestParam("userid")String userid,@RequestParam("pwd")String password)
    {
    	Manager1 u = new Manager1();
        
        u.setFirst_name(first_name);
        u.setLast_name(last_name);
        u.setAge(age);
        u.setGender(gender);
        u.setContact_number(contact_number);
        u.setUserid(userid);
        u.setPassword(password);
        
    	
		boolean isValid = registerService.registerManager(u);
		System.out.println("In the controller..");

		if(isValid)
		{
			
			return new ModelAndView("index" );	
		}
		else
		{
			System.out.println("register again!!!");
			return new ModelAndView("registration");
		}
 
      
    }


}
