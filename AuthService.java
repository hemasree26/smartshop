
    

package com.manager.spring.hibernate.service;

import java.util.List;
 
import org.apache.log4j.Logger;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.manager.spring.hibernate.pojo.Manager1;


 
public class AuthService {
 
    private HibernateTemplate hibernateTemplate;
    private static Logger log = Logger.getLogger(AuthService.class);
 
    private AuthService() { }
 
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate)
    
    {
        this.hibernateTemplate = hibernateTemplate;
    }
 
    @SuppressWarnings( { "unchecked", "deprecation" } )
    public boolean findManager(String uname, String upwd)
    
    {
    	
        log.info("Checking the manager in the database");
        
        boolean isValidManager= false;
        
        //String sqlQuery = "from User where name='"+uname + "' and password='"+upwd+"'";
        
        
            
        //System.out.println("In the authentication service...user entered data " + uname + " pwd "+upwd);
        
        try {

 
        	
        	
 

        	 //String sqlQuery = "from User1";
        	String sqlQuery = "from Manager1 u where u.userid=? and u.password=?";        	
        	 
         	List<Manager1> managerObj = (List) hibernateTemplate.find(sqlQuery, uname, upwd);
        	 
         	System.out.println("After select query from session..");
         	
            if(managerObj != null)
            {
            	System.out.println("managerObject is not null... ");
                for (Manager1 obj : managerObj)
                {
                    System.out.println(" Name " + obj.getUserid() + " Password "+obj.getPassword() );
                            
                }

            }

        	
        	  
            if(managerObj != null && managerObj.size() > 0)
            {
                //log.info("Id= " + managerObj.get(0)).getId() + ", Name= " + managerObj.get(0).getName() + ", Password= " + managerObj.get(0).getPassword());
                isValidManager= true;
            } 
        } catch(Exception e) {
            isValidManager= false;
            log.error("An error occurred while fetching the manager details from the database", e); 
            System.out.println(e);
        }
        return isValidManager;
    }

    public boolean registerManager(Manager1 u)
    {
    	try
    	{    	
    	
    	System.out.println("Before Entering Data");
    	boolean isValidManager=true;

    	hibernateTemplate.save(u);
    	
    	
    	System.out.println("After Entering Data");
    	
    	return isValidManager;
    	}
    	catch (Exception ex)
    	{
    		System.out.println(ex);
    		ex.printStackTrace();
    		
    	}
		return false;
    }
  /*  public boolean fetchProduct()
    {
    	 log.info("Checking the user in the database");
         
         boolean isValidManager= false;
         try {

        	 
         	
         	
        	 

        	 //String sqlQuery = "from product1";
        	String sqlQuery = "from product1";        	
        	 
         	List<product1> managerObj = (List) hibernateTemplate.find(sqlQuery);
        	 
         	System.out.println("After select query from session..");
         	
            if(managerObj != null)
            {
            	System.out.println("managerObject is not null... ");
                for (product1 obj : managerObj)
                {
                    System.out.println("Productid"+obj.getProductid());
                            
                }

            }

        	
        	  
            if(managerObj != null && managerObj.size() > 0)
            {
                //log.info("Id= " + managerObj.get(0)).getId() + ", Name= " + managerObj.get(0).getName() + ", Password= " + managerObj.get(0).getPassword());
                isValidManager= true;
            } 
        } catch(Exception e) {
            isValidManager= false;
            log.error("An error occurred while fetching the user details from the database", e); 
            System.out.println(e);
        }
        return isValidUser;
    }*/
   
}