<html>
<body>
  <%@ page import="javax.naming.* , mypack.* " %>
  
  <%
    
        InitialContext ctx=new InitialContext();
        Account acc=(Account)ctx.lookup("MyAccount#mypack.Account");

        String option=request.getParameter("opt");
        if(option.equals("min")){
            int amt=Integer.parseInt(request.getParameter("txtamt"));
            acc.deposit(amt);
   
        }
         
        session.setAttribute("account",acc);
   
  %>
  <br>
  <jsp:include page="operation.html" />
 
 </body>
 </html>