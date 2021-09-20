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
    <title>C Easy Question</title>
    <link rel="stylesheet" type="text/css" href="test.css">
    <style>

    </style>
</head>

<body background="../images/bg1.jpg">

    <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
        <tr align="center">

            <td><img src="../images/logo.png" width="150px" height="150px"></td>
            <td class="titletheme">Test Your Skills</td>
            <td class="button button4"><a href="../index.jsp">Go to index page </a> </td>

        </tr>

    </table>
    <div class="correct"> <h1> Correct Answers: C_Easy</h1> </div>

    <div id="question">

        <div class="container">

            <div>1. C is invented in which year ?</div>
            <div>a. 1971</div>

        </div>
        <div class="container">
            <div>2.The format identifier %i is also used for _____ data type?</div>

            <div>b. int</div>

        </div>
        <div class="container">
            <div>3.What is the size of an int data type?</div>
            <div>c. Depends on the system/compiler</div>
        </div>
        <div class="container">
            <div>4.Who is father of C Language? </div>

            <div>b. Dennis Ritchie</div>

        </div>
        <div class="container">
            <div>5.Which of the following shows the correct hierarchy of arithmetic operations in C
            </div>
            <div>d. * / + -</div>
        </div>
        <div class="container">
            <div>6.The Default Parameter Passing Mechanism is called as </div>
            <div>a. Call by Value</div>
        </div>
        <div class="container">
            <div>7.In switch statement, each case instance value must be _______? </div>
            <div>a. Constant</div>

        </div>
        <div class="container">

            <div>8.What is the right way to access value of structure variable book{ price, page }?</div>
            <div>a. printf("%d%d", book.price, book.page);</div>

        </div>
        <div class="container">
            <div>9. What will be the value of `a` after the following code is executed
                <pre>
#define square(x) x*x
a = square(2+3)
</pre>
            </div>
            <div>c. 11</div>
        </div>
        <div class="container">
            <div>10.The keyword break cannot be simply used within:
            </div>
            <div>b. if-else</div>
        </div>
       

    </div>
</body>

</html>