<%
if(session.getAttribute("user_id")==null || !session.getAttribute("user_id").equals("admin"))
{
    response.sendRedirect("../sign_in_admin.html");
}
%> 
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Connection conn=null;
            PreparedStatement pstmt=null;
            Statement stm=null;
            %>  
        <h1>Hello World!</h1>
        <%
            String company[]=request.getParameterValues("companyName");
    String examName[]=request.getParameterValues("examName");
    String link[]=request.getParameterValues("link");
    String lastDate[]=request.getParameterValues("lastDate");

            DBConnection obj =new DBConnection();
            try
            {  
                conn=obj.getConnection();
                String insert_sql="INSERT into oppurtunity() values(?,?,?,?)";
                
                String truncate_sql="TRUNCATE oppurtunity"; //truncate if already it has oppurtunity
                stm=conn.createStatement();
                stm.execute(truncate_sql);
                
                pstmt=conn.prepareStatement(insert_sql);
           
             
 
                for(int i=0;i<1;i++)
                {
                pstmt.setString(1, company[i]);
                pstmt.setString(2, examName[i]);
                pstmt.setString(3, link[i]);
                pstmt.setString(4, lastDate[i]);
                // Add row to the batch.
                pstmt.addBatch();
                }
                pstmt.executeBatch();
                response.sendRedirect("./index.jsp");
            }catch(Exception e)
            {
                out.println(e);
            }
        %>
            
        
<%
    
    
%>
    </body>
</html>

