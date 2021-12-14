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
    <title>Python Difficult Question</title>
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
        <h1> Correct Answers: Python_Difficult</h1>
    </div>
    
    <div class="row m-3 correct">
        
        <div class="col-12">1.Forcing a variable type to become another type before accessing an appropriate function is called
        </div>
        <div class="col-12">d. coersion</div>  
    </div>
    <div class="row m-3 correct">
        <div class="col-12">2.Which sorting algorithm is used in python?</div>
        <div class="col-12">d. None of these</div>  
    </div>
    <div class="row m-3 correct">
        <div class="col-12">3. What will be the output of the following code?
            <pre>
                class A:
                
                def __init__(self):
                
                self.count=5
                
                self.count=count+1
                
                a=A()
                
                print(a.count)
            </pre>
        </div>
        <div class="col-12">d. Error</div>  
    </div>
    <div class="row m-3 correct">
        <div class="col-12">4. What will be the output of the following Python code if the system date is 18th June, 2017 (Sunday)?</div>
        <pre>
            tday=datetime.date.today()
            print(tday.weekday())      
        </pre>
        <div class="col-12">a. 6</div>
    </div>
    <div class="row m-3 correct">
        <div class="col-12">5. What will be the output of the following code snippet?</div>
        <pre>
            class Person:
            def __init__(self, id):
            self.id = id
            sam = Person(100)
            sam.__dict__['age'] = 49
            print (sam.age + len(sam.__dict__))
        </pre>
        <div class="col-12">e. 51</div>  
    </div>
    <div class="row m-3 correct">
        <div class="col-12">6.
            <pre>
                class A:
                def __init__(self, i = 0):
                self.i = i
                
                class B(A):
                def __init__(self, j = 0):
                self.j = j
                
                def main():
                b = B()
    print(b.i)
    print(b.j)

    main()
</pre>
        </div>
        <div class="col-12">a. Class B inherits A, but the data field ?i? in A is not inherited.</div>
    </div> 
    <div class="row m-3 correct">
        <div class="col-12">7.What will be the output of the following code snippet?</div>
        <pre>
            class A:
            def __init__(self):
            self.calcI(30)
            print("i from A is", self.i)
            
            def calcI(self, i):
            self.i = 2 * i;
            
            class B(A):
            def __init__(self):
            super().__init__()
            
            def calcI(self, i):
            self.i = 3 * i;
            
            b = B()
        </pre>
        <div>d. The __init__ method of class A gets invoked and it displays ?i from A is 90?</div>  
    </div>
    <div class="row m-3 correct">
        <div class="col-12">8. Which of the following statements incorrectly define pickling in python?</div>
        
        <div class="col-12">b. It is a process to convert a byte stream to Python object</div>
    </div>
    <div class="row m-3 correct">
        <div class="col-12">9.What is the output of the code shown below?
            <pre>
                def f(x):
                yield x+1
                print("test")
                yield x+2
                g=f(9)
            </pre> </div>
            <div class="col-12">d. No output</div>  
        </div>
        <div class="row m-3 correct">
            <div class="col-12">10.What will be the ouput of following code?</div>
            <pre>
                def multipliers():
                return [lambda x : i * x for i in range(4)]
                
                print([m(2) for m in multipliers()])
            </pre>
            <div class="col-12">c. [6,6,6,6]</div>
        </div>
    </div>
</div>
</body>
</html>