<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("../sign_in.html");
    }
%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Easy Question</title>
    <link rel="stylesheet" type="text/css" href="test.css">
    </head>
<body background="../images/bg1.jpg">
    
    <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
        <tr align="center">

            <td><img src="../images/logo.png"width="150px"height="150px"></td>
            <td class="titletheme">Test Your Skills</td>
            <td class="button button4"><a href="../index.jsp">Go to index page </a> </td>
        </tr>
        
        </table>
        <script>
     
             window.history.forward(); 
            function noBack() { 
                window.history.forward(); 
            } 
    </script>
            <div class="correct"> <h1> Correct Answers: Java_Easy</h1> </div>

   <div id="question">
        <div class="container">
        <div>1. Which of the following is not assignment operator?</div>
        <div>b<input type="radio" name="91" value="b"> = =</div>
        </div>
        <div class="container">
        <div>2. The java interpreter uses ____________ method before any objects are created.</div>
        <div>b<input type="radio" name="92" value="b"> Main </div>
        </div>
        <div class="container">
        <div>3. Java does not support ______________.</div>
        <div>d<input type="radio" name="93" value="d"> All of above</div>  
        </div>
        <div class="container">
        <div>4. What keyword is used in Java to define a constant?</div>
        <div>b<input type="radio" name="94" value="b"> final</div>
        </div>
        <div class="container">
        <div>5. ?Use of undeclared variables? is the ______________ type of error.</div>
        <div>d<input type="radio" name="95" value="d"> Compile-time</div>  
        </div>
        <div class="container">
        <div>6.  _____ is used to find and fix bugs in the Java programs.</div>
        <div>d<input type="radio" name="96" value="d"> JDB</div>  
        </div>
        <div class="container">
        <div>7. What is the return type of the hashCode() method in the Object class?</div>
        <div>b<input type="radio" name="97" value="b"> int</div>
        </div>
        <div class="container">
        <div>8. Which of the following is a reserved keyword in Java?</div>
        <div>b<input type="radio" name="98" value="b"> strictfp</div>
        </div>
        <div class="container">
        <div>9. Given, ArrayList list = new ArrayList();  <br>What is the initial quantity of the ArrayList list?</div>
        <div>b<input type="radio" name="99" value="b"> 10</div>
        </div>
        <div class="container">
        <div>10. What is the result of the following program?<br>

public static synchronized void main(String[] args) throws <br> 
InterruptedException {  <br>
     Thread f = new Thread(); <br> 
      f.start();  <br>
      System.out.print("A");  <br>
      f.wait(1000);  <br>
      System.out.print("B"); <br> 
}  </div>
        <div>d<input type="radio" name="100" value="d"> A will be printed, and then an exception is thrown.</div>  
        </div>
        
</div>
</body>
</html>