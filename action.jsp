<html>
<body>
  <%@ page import="mypack.* , java.sql.* , DBpack.DBCon "  %>    
  <%
  
     Account acc=(Account)session.getAttribute("account");
     int amt;
    
     String option=request.getParameter("opt");
     if(option.equals("enquiry")){
             amt=acc.enquiry();
             out.println("<div id='third'>Available balance= "+amt+"</div>");
             out.println("<input type='hidden' id='hd' name='txtamt' value="+amt+"/>");
     }else{
         
            int amount=Integer.parseInt(request.getParameter("txtamt"));
            if(option.equals("deposit")){
                 
                    acc.deposit(amount);
                    out.println("<div id='third'>Amount deposited succesfully</div>");
                    amt=acc.enquiry();
                    amt=amt+amount;
                    out.println("<input type='hidden' id='hd' name='txtamt' value="+amt+"/>");
                 
            }else{
                   
                 if(acc.withdraw(amount)){
                         amt=acc.enquiry();
                          amt=amt-amount;
                          out.println("<div id='third'>withdrawl succesfull</div>");    
                          out.println("<input type='hidden' id='hd' name='txtamt' value="+amt+"/>");
                      
                 }
                 else
                     out.println("<div id='third'>insufficent amount</div>");

            }

      }
  
  %>
  <br>
    <jsp:include page="operation.html" />
  </body>
 </html>