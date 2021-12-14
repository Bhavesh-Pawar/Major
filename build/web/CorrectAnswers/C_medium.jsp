<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("../sign_in.html");
    }
%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>C Medium</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Zen+Old+Mincho&display=swap" rel="stylesheet">
    <link rel="icon" href="../favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
        integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./test.css">
    <script src="../js/my_js.js"></script>
    <style>
        body {
            font-family: 'Zen Old Mincho', serif;
        }
    </style>
    <script>
        function noBack() { 
            window.history.forward(); 
        } 
    </script>
</head>

<body background="../images/bg1.jpg" onload="noBack()">
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
        <div class="row m-3 justify-content-center"> <h1> Correct Answers: C_Medium</h1> </div>

            <div class="row m-3 correct">
        <div class="col-12">1.What will be the output of the following statement ?</div>
        <pre>
            printf( 3 + "goodbye");
        </pre>
        
        <div class="col-12">d. dbye</div>  
    </div>
    <div class="row m-3 correct">
        <div class="col-12">2.What will be the output of following statements ?</div>
        <pre>
            char x[] = "hello hi"; printf("%d%d",sizeof(*x),sizeof(x));
        </pre>
        
        <div class="col-12">d. 19</div>  
    </div>
    <div class="row m-3 correct">
        <div class="col-12">3. What is the output?</div>
        <pre>
            #include
            main()
            {
                char str[]="S\065AB";
                printf("\n%d", sizeof(str));
            }
        </pre>
        <div class="col-12">c. 5 </div>
    </div>
    <div class="row m-3 correct">
        <div class="col-12">4.What is a lint?</div>      
        
        <div class="col-12">c. Analyzing tool</div>
        
    </div>
    <div class="row m-3 correct">
        <div class="col-12">5.The maximum length of a variable in C is ___</div>
        <div class="col-12">a. 8</div>
        
    </div>
    <div class="row m-3 correct">
        <div class="col-12">6.p++ executes faster than p+1 because</div>
        <div class="col-12">b. p++ is a single instruction</div>
        
    </div>
    <div class="row m-3 correct">
        <div class="col-12">7.The printf() function returns which value when an error occurs?</div>
        
        <div class="col-12">c. Negative value</div>
       
    </div>
    <div class="row m-3 correct">
        <div class="col-12">8.The meaning of conversion character for data input is</div>
        
        <div class="col-12">c. Data item is a short integer</div>
    </div>
    <div class="row m-3 correct">
        <div class="col-12">9.A “switch” statement is used to:</div>
        
        <div class="col-12">d. None of these.</div>  
    </div>
    <div class="row m-3 correct">
        <div class="col-12">10.If you want to exchange two rows in a two-dimensional array, the fastest way is to:            </div>
        
        <div class="col-12">c. Silence the address of the rows in an array of the pointer and exchange the pointer</div>
    </div>
    
</div>
</body>
</html>