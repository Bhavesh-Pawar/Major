<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
    }
%> 
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Zen+Old+Mincho&display=swap" rel="stylesheet">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
        integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="about.css">
    <script src="js/my_js.js"></script>
    <style>
        body {
            font-family: 'Zen Old Mincho', serif;
        }
    </style>
</head>

<body background="images/bg1.jpg">
    <div class="container-fluid">
        <ul class="nav nav-pills nav-fill">
            <li class="nav-item m-1">
                <img src="./images/logo.png" class="img-fluid" alt="">
            </li>
            <li class="nav-item m-1">
                <h1 class="text-center">Test Your Skills</h1>
            </li>
            <li class="nav-item m-1">
                <button class="btn" style="background-color: navy;"> <a href="./index.jsp" class="text-light">Home
                    </a></button>
            </li>
        </ul>
    </div>
    <div class="container-fluid m-2" style="background-color: navy;">
        <div class="row m-1">
            <div class="col">
                <h3 class="text-center text-light">About Us</h3>
            </div>
        </div>
        <div class="row m-1">
            <div class="col">
                <h6 class="text-center text-light">Some text about who we are and what we do.
                </h6>
            </div>
        </div>
        <div class="row m-1">
            <div class="col">
                <h6 class="text-center text-light">Resize the browser window to see that this page is responsive by the
                    way.</h6>
            </div>
        </div>
    </div>
    <div class="container-fluid m-2">
        <div class="row m-1">
            <div class="col">
                <h3 class="text-center">Our Team</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 shadow bg-white">
                <img src="images/bhavesh.jpg" class="img-fluid rounded-circle" alt="">
                <h2>
                    Aditya Raj Singh Chouhan
                </h2>
                Full Stack Developer

                Highly motivated full stack developer from India.
                A Designer: A user interface designer with a passion of desiging beautiful and functional user
                experiences. Minimalist who thinks less is more.
                A Coder: Backend developer who focuses on writting clean, elegant and efficient code. And I enjoy
                competitive programming.
            </div>
            <div class="col-md-3 shadow bg-white">
                <img src="images/bhavesh.jpg" class="img-fluid rounded-circle" alt="">
                <h2>
                    Bhavesh Panwar
                </h2>
                Full Stack Developer

                Highly motivated full stack developer from India.
                A Designer: A user interface designer with a passion of desiging beautiful and functional user
                experiences. Minimalist who thinks less is more.
                A Coder: Backend developer who focuses on writting clean, elegant and efficient code. And I enjoy
                competitive programming.
            </div>
            <div class="col-md-3 shadow bg-white">
                <img src="images/nikita.jpg" class="img-fluid rounded-circle" alt="">
                <h2>
                    Nikita Patel
                </h2>
                Full Stack Developer

                Highly motivated full stack developer from India.
                A Designer: A user interface designer with a passion of desiging beautiful and functional user
                experiences. Minimalist who thinks less is more.
                A Coder: Backend developer who focuses on writting clean, elegant and efficient code. And I enjoy
                competitive programming.
            </div>
            <div class="col-md-3 shadow bg-white">
                <img src="images/mansvi.jpg" class="img-fluid rounded-circle" alt="">
                <h2>

                    Mansvi Shrivastava
                </h2>
                Full Stack Developer

                Highly motivated full stack developer from India.
                A Designer: A user interface designer with a passion of desiging beautiful and functional user
                experiences. Minimalist who thinks less is more.
                A Coder: Backend developer who focuses on writting clean, elegant and efficient code. And I enjoy
                competitive programming.
            </div>
        </div>
        <div class="footer">
            <a href="#" class="fa fa-facebook"></a>
            <a href="#" class="fa fa-twitter"></a>
            <a href="#" class="fa fa-linkedin"></a>
            <a href="#" class="fa fa-instagram"></a>
            <a href="#" class="fa fa-github"></a>
        </div>
    </div>
</body>

</html>