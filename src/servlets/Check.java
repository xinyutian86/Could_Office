package servlets;

import java.io.IOException;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
   
   
 public class Check extends HttpServlet {  
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
       //�������������������  
       response.setCharacterEncoding("utf-8");  
       String user = request.getParameter("username");  
       //�������������������  
       user = new String(user.getBytes("iso-8859-1"),"gb2312");  
       System.out.println(user);  
       String msg = null;  
       if("����ʦ".equals(user))  
       {  
           msg = "�û����Ѿ���ռ��!";  
       }else  
       {  
           msg = "�û�������ʹ��!";  
       }  
       response.getWriter().println(msg);  
        
    }   
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
       doGet(request,response);  
    }                
}  