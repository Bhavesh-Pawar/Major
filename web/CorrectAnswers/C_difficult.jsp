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
    <title>C Difficult Question</title>
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
        window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
    </script>
</head>

<body background="../images/bg1.jpg" onload="noBack">
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
        <div class="row m-3 justify-content-center">
            <h1 class="text-center"> Correct Answers: C_Difficult</h1>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">1.What type of array is generally generated in Command-line argument?</div>
            <div class="col-12">b. Jagged Array</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">
                2.What will be output of the following program if argument passed to command lines are :
                Paper Ink Pen
                <pre>
        int main(int argc, char ** argv){
         char **items;
         int j = 3, i;
         items = argv;
         for(i = 1; (i%4); i++){
          int **p = &items[j];
          printf("%c", **p);
          j--;
         }
         return 0;
        }
        </pre>
            </div>

            <div class="col-12">
                a. PIP
            </div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">
                3.What does the following declaration mean?
                <pre>
    int (*ptr)[10];
    </pre>
            </div>
            <div class="col-12">
                b. ptr is a pointer to an array of 10 integers
            </div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">4.Which of the following are two types of branching?</div>
            <div class="col-12">c. Multi-way & three way</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">5.A structure declaration without any variables describe ____</div>
            <div class="col-12">b. Template</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">6. How many times the below loop will be executed?
            </div>

            <pre>
        int main()
        {
        int x, y;
        for(x=5;x>=1;x--)
        {
        for(y=1;y<=x;y++)
        printf("%d\n",y);
        }
        }
</pre>
            <div class="col-12">a. 15</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">7.Guess the output?</div>
            <pre>
    #include <stdio.h>
    void main()
    {
        char *a[10] = {"hi", "hello", "how"};
        int i = 0, j = 0;
        a[0] = "hey";
        for (i = 0;i < 10; i++)
        printf("%s\n", a[i]);
    }
</pre>
            <div class="col-12">a. hey hello how Segmentation fault</div>

        </div>
        <div class="row m-3 correct">
            <div class="col-12">8.Which string should be used inside scanf() to get strings after space?</div>
            <div class="col-12">b. %[^\n]%*c</div>

        </div>
        <div class="row m-3 correct">
            <div class="col-12">9.Guess the output?</div>
            <pre>
#include <stdio.h>
    int main()
    {
        int i = 97, *p = &i;
        foo(&i);
        printf("%d ", *p);
    }
    void foo(int *p)
    {
        int j = 2;
        p = &j;
        printf("%d ", *p);
    }
</pre>
            <div class="col-12">c. 2 97</div>

        </div>
        <div class="row m-3 correct">
            <div class="col-12">
                10.What will be the output of the following code?
                <pre>
                        void main()
                        {
                        int k = 5;
                        int *p = &k;
                        int **m = &p;
                        **m = 6;
                        printf("%d\n", k);
                        }
                        </pre>
            </div>
            <div class="col-12">c. 6</div>
        </div>
        <div class="container">

            <div>
            </div>


            <div></div>
        </div>


    </div>
</body>

</html>