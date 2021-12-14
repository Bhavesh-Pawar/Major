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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Zen+Old+Mincho&display=swap" rel="stylesheet">
    <link rel="icon" href="../favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
        integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="../js/my_js.js"></script>
    <link rel="stylesheet" href="test.css">
    <style>
        body {
            font-family: 'Zen Old Mincho', serif;
        }
    </style>
    <script>
        window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
    </script>
</head>

<body background="../images/bg1.jpg">
    <div class="container-fluid">
        <ul class="nav nav-pills nav-fill">
            <li class="nav-item m-1">
                <img src="../images/logo.png" class="img-fluid" alt="">
            </li>
            <li class="nav-item m-1">
                <h1 class="text-center">Test Your Skills</h1>
            </li>
            <li class="nav-item m-1">
                <button class="btn" style="background-color: navy;"> <a href="../index.jsp" class="text-light">Home
                    </a></button>
            </li>
        </ul>
    </div>
    <div class="container">
        <div class="row justify-content-center">

            <h1> Correct Answers: Java_Easy</h1>
        </div>
        
        <div class="row m-3 correct">
            <div class="col-12">1. Which of the following is not assignment operator?</div>
            <div class="col-12">b. = =</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">2. The java interpreter uses ____________ method before any objects are created.</div>
            <div class="col-12">b. Main </div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">3. Java does not support ______________.</div>
        <div class="col-12">d. All of above</div>  
    </div>
        <div class="row m-3 correct">
            <div class="col-12">4. What keyword is used in Java to define a constant?</div>
        <div class="col-12">b. final</div>
        </div>
        <div class="row m-3 correct">
        <div class="col-12">5. ?Use of undeclared variables? is the ______________ type of error.</div>
        <div class="col-12">d. Compile-time</div>  
    </div>
        <div class="row m-3 correct">
            <div class="col-12">6.  _____ is used to find and fix bugs in the Java programs.</div>
            <div class="col-12">d. JDB</div>  
        </div>
        <div class="row m-3 correct">
            <div class="col-12">7. What is the return type of the hashCode() method in the Object class?</div>
        <div class="col-12">b. int</div>
    </div>
        <div class="row m-3 correct">
            <div class="col-12">8. Which of the following is a reserved keyword in Java?</div>
            <div class="col-12">b. strictfp</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">9. Given, ArrayList list = new ArrayList();  <br>What is the initial quantity of the ArrayList list?</div>
            <div class="col-12">b. 10</div>
        </div>
        <div class="row m-3 correct">
        <div class="col-12">10. What is the result of the following program?<br>
            
            public static synchronized void main(String[] args) throws <br> 
            InterruptedException {  <br>
                Thread f = new Thread(); <br> 
                f.start();  <br>
                System.out.print("A");  <br>
                f.wait(1000);  <br>
                System.out.print("B"); <br> 
            }  </div>
            <div class="col-12">d. A will be printed, and then an exception is thrown.</div>  
        </div>
        
    </div>
</div>
</body>
</html>