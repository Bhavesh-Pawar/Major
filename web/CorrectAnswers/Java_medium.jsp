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
    <title>Java medium question</title>
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
            <h1>Correct Answers: Java_Medium </h1>
         </div>

      <div class="row m-3 correct">
        <div>1. Given the following class declarations, what is the output from Student s1 = new GradStudent(); followed by s1.getInfo();?<br>
<pre>
public class Student {
   public String getFood() {
      return "Pizza";
   }
   public String getInfo()  {
      return this.getFood();
   }
}

public class GradStudent extends Student {
   public String getFood() {
      return "Taco";
   }
}</pre></div>
        <div>b. Taco</div>
        </div>
        <div class="row m-3 correct">
        <div>2.  Given the following class declarations, and EnhancedItem enItemObj = new EnhancedItem(); in a client class, which of the following statements would compile?<br>
<pre>
public class Item
{
   private int x;

   public void setX(int theX)
   {
      x = theX;
   }
   // ... other methods not shown
}

public class EnhancedItem extends Item<br>
{
   private int y;

   public void setY(int theY)
   {
      y = theY;
   }

  // ... other methods not shown<br>
}
I. enItemObj.y = 32;
II. enItemObj.setY(32);
III. enItemObj.setX(52);</pre></div>
        <div>d. II and III only</div>  
        </div>
        <div class="row m-3 correct">
        <div>3. Given the following class declarations and initializations in a client program, which of the following is a correct call to method1?</div>
        <pre>
        public class Test1
{
   public void method1(Test2 v1, Test3 v2)
   {
      // rest of method not shown
   }
}

public class Test2 extends Test1
{
}

public class Test3 extends Test2
{
}

The following initializations appear in a different class.
Test1 t1 = new Test1();
Test2 t2 = new Test2();
Test3 t3 = new Test3();
</pre>
        <div>a. t3.method1(t3,t3);</div>
        </div>
        <div class="row m-3 correct">
        <div>4.  If you have a parent class Animal that has a method speak() which returns: Awk. Cat has a speak method that returns: Meow. Bird does not have a speak method. Dog has a speak method that returns: Woof. Pig does not have a speak method. Cow has a speak method that returns: Moo. What is the output from looping through the array a created below and asking each element to speak()?</div>
        <prep>
            Animal[] a = { new Cat(), new Cow(), new Dog(), new Pig(), new Bird() }
        </prep>
        <div>a. Meow Moo Woof Awk Awk</div>
        </div>
        <div class="row m-3 correct">
        <div>5.  Given the following class declarations and code, what is the result when the code is run?</div>
        <prep>
            public class Car
{
   private int fuel;

   public Car() { fuel = 0; }
   public Car(int g) { fuel = g; }

   public void addFuel() { fuel++; }
   public void display() { System.out.print(fuel + " "); }
}

public class RaceCar extends Car
{
   public RaceCar(int g) { super(2*g); }
}

What is the result when the following code is compiled and run?

Car car = new Car(5);
Car fastCar = new RaceCar(5);
car.display()
car.addFuel();
car.display();
fastCar.display();
fastCar.addFuel();
fastCar.display();
        </prep>
        
        <div>b. The code compiles and runs with no errors, the output is: 5 6 10 11</div>
        </div>
        <div class="row m-3 correct">
        <div>6. Given the following class declarations and code, what is the result when the code is run?</div>
        <pre>
            public class Book
{
   public String getISBN()
   {
      // implementation not shown
   }

   // constructors, fields, and other methods not shown
}

public class Dictionary extends Book
{
   public String getDefinition(String word)
   {
      // implementation not shown
   }

   // constructors, fields, and methods not shown
}

Assume that the following declaration appears in a client class.

Book b = new Dictionary();

Which of the following statements would compile without error?
I.  b.getISBN();
II. b.getDefinition("wonderful");
III. ((Dictionary) b).getDefinition("wonderful");
        </pre>
        <div>c. I and III only</div>
        </div>
        <div class="row m-3 correct">
        <div>7. What will be the output of the following Java code?</div>
        <prep>
            class output 
    {
        public static void main(String args[])
        {
            char c[]={'a', '1', 'b' ,' ' ,'A' , '0'};
            for (int i = 0; i < 5; ++i)
            {
                   if(Character.isDigit(c[i]))
                       System.out.println(c[i]+" is a digit");
                   if(Character.isWhitespace(c[i]))
                       System.out.println(c[i]+" is a Whitespace character");
                   if(Character.isUpperCase(c[i]))
                       System.out.println(c[i]+" is an Upper case Letter");
                   if(Character.isLowerCase(c[i]))
                       System.out.println(c[i]+" is a lower case Letter");
               i=i+3;
            }
        }
    }
a)
        </prep>
        <div>c. a is a lower case Letter A is an upper case Letter</div>
        </div>
        <div class="row m-3 correct">
        <div>8.  Object-oriented inheritance models the</div>
        <div>a. “is a kind of” relationship</div>
        </div>
        <div class="row m-3 correct">
        <div>9. Predict output of following</div>
        <pre>
            class First
{
	int i = 10;

	public First(int j)
	{
		System.out.println(i);
		this.i = j * 10;
	}
}

class Second extends First
{
	public Second(int j)
	{
		super(j);
		System.out.println(i);
		this.i = j * 20;
	}
}

public class MainClass
{
	public static void main(String[] args)
	{
		Second n = new Second(20);
		System.out.println(n.i);
	}
}

        </pre>
        <div>a. 10 200 400</div>
        </div>
        <div class="row m-3 correct">
        <div>10. Predict output of following</div>
        <pre>import java.util.*;
class I
{
	public static void main (String[] args)
	{
		Object i = new ArrayList().iterator();
		System.out.print((i instanceof List) + ", ");
		System.out.print((i instanceof Iterator) + ", ");
		System.out.print(i instanceof ListIterator);
	}
}
</pre>
        <div>a. false true false</div>
        </div>
       
</div>
</div>
</body>
</html>
