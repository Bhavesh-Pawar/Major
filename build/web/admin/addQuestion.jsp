
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
            DBConnection obj =new DBConnection();
            try
            {  
                conn=obj.getConnection();
                String insert_sql="INSERT into questions() values(?,?,?,?,?,?,?)";
                
                String truncate_sql="TRUNCATE questions"; //truncate if already it has questions
                stm=conn.createStatement();
                stm.execute(truncate_sql);
                
                pstmt=conn.prepareStatement(insert_sql);
                String[] q_id =request.getParameterValues("q_id");
                String[] question =request.getParameterValues("question");
                String[] description =request.getParameterValues("description");
                String[] test_input_1 =request.getParameterValues("test_input_1");
                String[] test_output_1 =request.getParameterValues("test_output_1");
                String[] test_input_2 =request.getParameterValues("test_input_2");
                String[] test_output_2 =request.getParameterValues("test_output_2");              
              
                for(int i=0;i<3;i++)
                {
                pstmt.setInt(1, i + 1);
                pstmt.setString(2, question[i]);
                pstmt.setString(3, description[i]);
                pstmt.setString(4, test_input_1[i]);
                pstmt.setString(5, test_output_1[i]);
                pstmt.setString(6, test_input_2[i]);
                pstmt.setString(7, test_output_2[i]);
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
            
        
<%--<%!
    Connection conn=null;
    PreparedStatement pstm=null;
%>
<%
                               
    try
    {
    DBConnection obj =new DBConnection();
    
    }catch(Exception e)
    {
    out.println(e);
    }
%>--%>
    </body>
</html>
