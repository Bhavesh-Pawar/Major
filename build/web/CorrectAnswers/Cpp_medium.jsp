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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C++ Medium Question</title>
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

            <h1> Correct Answers: C++_Medium</h1>
        </div>

        <div class="row m-3 correct">
            <div class="col-12">1.What will be the output of the i and j ? </div>
            <pre>
                      int i=5,j;
                      j= ++i + ++i;
                    </pre>
            <div class="col-12">c. i=7 j=14</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">2.Delaration a pointer more than once may cause ____</div>
            <div class="col-12">c. Trap</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">3.In CPP, members of a class are ______ by default.</div>
            <div class="col-12">b. Private</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">4.Which classes allow primitive types to be accessed as objects?</div>
            <div class="col-12">b. Virtual</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">5.When is std::bad_alloc exception thrown?</div>
            <div class="col-12">a. When new operator cannot allocate memory</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">6.Which of the following keyword supports dynamic method resolution?</div>
            <div class="col-12">a. abstract</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">7.Which one of the following is not a fundamental data type in C++ </div>
            <div class="col-12">a.  float</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">8.The programming language that has the ability to create new data types is called___.
            </div>
            <div class="col-12">d. Extensible</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">9.Which of the following is not a valid conditional inclusions in
                preprocessor directives </div>
            <div class="col-12">a. #ifdef</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">10.The output of this program is
                <pre>
                    int a = 10;
                    void main()
                    {
                        int a = 20;
                        cout << a << ::a;
    }
</pre>
            </div>
            <div class="col-12">c. 20 10</div>
        </div>

    </div>
</body>

</html>