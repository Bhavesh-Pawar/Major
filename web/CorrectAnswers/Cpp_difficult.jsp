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
    <title>Cpp_difficult Question</title>
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

        <div class="row m-3 justify-content-center">
            <h1> Correct Answers: C++_Difficult</h1>
        </div>

        <div id="question">
            <div class="row m-3 correct">
                <div class="col-12">1.Which of the following gives the name of the program if the second parameter to the main fucntion
                    is char **argv?
                </div>
                <div class="col-12">c. argv[0]</div>
            </div>
            <div class="row m-3 correct">
                <div class="col-12">2.Which of the following syntax can be used to use a member of a namespace without including that
                    namespace?</div>
                <div class="col-12">a. namespace::member</div>

            </div>
            <div class="row m-3 correct">
                <div class="col-12">3.Which of the following statements are true about Catch handler? i) It must be placed immediately
                    after try block T. ii) It can have multiple parameters. iii) There must be only one catch handler
                    for every try block. iv) There can be multiple catch handler for a try block T. v) Generic catch
                    handler can be placed anywhere after try block.</div>

                <div class="col-12">c.  Only i, iv</div>
            </div>
            <div class="row m-3 correct">
                <div class="col-12">4.A void pointer cannot point to which of these? </div>

                <div class="col-12">b. Class member in c++</div>

            </div>
            <div class="row m-3 correct">
                <div class="col-12">5.What will be the output of the following ?</div>
                <pre>
                #include&lt;<iostream.h> 
                    int main()
                    {
                        int x = 80; 
                        int y& = x;
                        x++;
                        cout << x << " " << --y;
                        return 0;
                    }
                </pre>

                <div class="col-12">d. It will result in a compile time error.</div>
            </div>
            <div class="row m-3 correct">
                <div class="col-12">6.What will be the output of the following ?</div>
                <pre>
            #include<iostream.h> 
                int main()
                {
                    int arr[] = {1, 2 ,3, 4, 5}; 
                    int &zarr = arr;
                    for(int i = 0; i <= 4; i++)
                    {
                        arr[i] += arr[i];
                    }
                    for(i = 0; i <= 4; i++)
                    cout<< zarr[i]; 
                    return 0; 
                }
            </pre>

                <div class="col-12">d. It will result in a compile time error.</div>
            </div>
            <div class="row m-3 correct">
                <div class="col-12">7.What will be the output of the following ?</div>
                <pre>
                #include < stdio.h >  
                using namespace std;  
                int main()  
                {  
                    int array[] = {10, 20, 30};  
                    cout << -2[array];  
                    return 0;  
                } 
            </pre>
                <div class="col-12">b. -30</div>
            </div>
            <div class="row m-3 correct">
                <div class="col-12">8.Observer the given C++ program carefully and choose the correct output from the given options:

                    Program</div>
                <pre>
#include <iostream>  
    #include <string>  
        using namespace std;  
        int main()  
        {  
            cout<<is_array<int>::value; // case A  
                cout<<is_array<char[10]>::value; // case B  
                    cout<<is_array<string>::value;  // case c  
                        return 0;  
                    }  
                </pre>
                <div class="col-12">c. 010</div>
            </div>
            <div class="row m-3 correct">
                <div class="col-12">9.Which of the following statement is true about the new and malloc?</div>
                I. The "new" is a type of operator while "malloc" is a kind of function <br>
                II. "new" invokes a constructor, whereas "malloc" does not invoke the constructor <br>
                III. "malloc" returns void pointer and also needed to typecast whereas "new" returns required the
                pointer
                <div class="col-12">c. I, II, III</div>
            </div>
            <div class="row m-3 correct">
                <div class="col-12">10.Which one of the following statements correctly refers to the Delete and Delete[] in C++
                    programming language? </div>
                <div class="col-12">d. The "Delete" is used for deleting a single standard
                    object, whereas the "Delete[]" is used for deleting an array of the multiple objects</div>
            </div>

        </div>
</body>

</html>