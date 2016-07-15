
  <%@ page import="java.sql.* , DBpack.DBCon" %>
<html>
  <body>
    
     <% 
          int amt;
          String username=request.getParameter("txtusername");
          String password=request.getParameter("txtpassword");     
          Connection con=DBCon.getConnection();
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from bank");//rs.next();
         // System.out.println(rs.getString(2)+"\n"+rs.getString(4));
          while(rs.next()){ 
           
                 if(rs.getString(2).equals(username) && rs.getString(3).equals(password) ){
                         amt=rs.getInt(4);
                         RequestDispatcher rsd = request.getRequestDispatcher("account.jsp?opt=min&txtamt="+amt);
                         rsd.forward(request,response);
     
      %>

                   
      <%
                 
                 }//if close
          
          }//while close
            
          out.println("<div id='third'>account does not exist</div>");
       %>             
       <br><br>
        <jsp:include page="index.html" />
  </body>
</html>
                                  
  