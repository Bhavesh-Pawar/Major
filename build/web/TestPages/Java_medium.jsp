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
    <link rel="stylesheet" type="text/css" href="test.css">
   </head>
<body background="../images/bg1.jpg">
   
  <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
      <tr align="center">

          <td><img src="../images/logo.png"width="150px"height="150px"></td>
          <td class="titletheme">Test Your Skills</td>
      </tr>
      <tr>
      
          <span id="display" class="timer"></span>
      
      <div id="submitted"></div>          
      </tr>
      </table>
      <script>
        
                  window.history.forward(); 
                 function noBack() { 
                     window.history.forward(); 
                 } 
                 window.history.forward(); 
         function noBack() { 
             window.history.forward(); 
         } 
         </script>
         <script>
          var div = document.getElementById('display');
          var submitted = document.getElementById('submitted');
      
            function CountDown(duration, display) {
      
                      var timer = duration, minutes, seconds;
      
                    var interVal=  setInterval(function () {
                          minutes = parseInt(timer / 60, 10);
                          seconds = parseInt(timer % 60, 10);
      
                          minutes = minutes < 10 ? "0" + minutes : minutes;
                          seconds = seconds < 10 ? "0" + seconds : seconds;
                  display.innerHTML ="<b>" + minutes + "m : " + seconds + "s" + "</b>";
                          if (timer > 0) {
                             --timer;
                          }else{
                     clearInterval(interVal)
                              SubmitFunction();
                           }
      
                     },1000);
      
              }
      
            function SubmitFunction(){
              submitted.innerHTML="Time is up!";
              document.getElementById('C').submit();
      
             }
           function demoVisibility() 
           {
              document.getElementById('question').style.visibility='visible'; 
              document.getElementById('startButton').style.visibility='hidden'; 
              document.getElementById('display').style.visibility='visible'; 
                document.getElementById('instruct').style.visibility='hidden';
                document.getElementById('instruct').style.height='0px';
              CountDown(1200,div);
           }  
          </script>
          <div id="instruct">
        <h1>INSTRUCTIONS</h1>
        <ol type="I" id="lines">
            <li>You have to submit the test within time.</li>
            <li>After times up,it will be auto submitted.</li>
            <li>Read the questions carefully</li>
            <li>All the best :)</li>
        </ol>
    </div>
      <div id="startButton"  onclick=demoVisibility() class="startTest">Start the test</div> 
      <div style="visibility: hidden;" id="question">
          <form action="get_medium_java.jsp" name="C" id="C" method="POST">
      <div class="container">
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
        <div>a<input type="radio" name="101" value="a"> Won't compile since GradStudent doesn't have a getInfo method</div>
        <div>b<input type="radio" name="101" value="b"> Taco</div>
        <div>c<input type="radio" name="101" value="c"> Pizza</div>
        <div>d<input type="radio" name="101" value="d"> Won't compile since you use this.getFood()</div>  
        </div>
        <div class="container">
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
        <div>a<input type="radio" name="102" value="a"> I only</div>
        <div>b<input type="radio" name="102" value="b"> II only</div>
        <div>c<input type="radio" name="102" value="c"> I and II only</div>
        <div>d<input type="radio" name="102" value="d"> II and III only</div>  
        </div>
        <div class="container">
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
        <div>a<input type="radio" name="103" value="a"> t3.method1(t3,t3);</div>
        <div>b<input type="radio" name="103" value="b"> t1.method1(t1,t1);</div>
        <div>c<input type="radio" name="103" value="c"> t2.method1(t3,t2);</div>
        <div>d<input type="radio" name="103" value="d"> t3.method1(t1,t1);</div>  
        </div>
        <div class="container">
        <div>4.  If you have a parent class Animal that has a method speak() which returns: Awk. Cat has a speak method that returns: Meow. Bird does not have a speak method. Dog has a speak method that returns: Woof. Pig does not have a speak method. Cow has a speak method that returns: Moo. What is the output from looping through the array a created below and asking each element to speak()?</div>
        <prep>
            Animal[] a = { new Cat(), new Cow(), new Dog(), new Pig(), new Bird() }
        </prep>
        <div>a<input type="radio" name="104" value="a"> Meow Moo Woof Awk Awk</div>
        <div>b<input type="radio" name="104" value="b"> Awk Awk Awk Awk Awk</div>
        <div>c<input type="radio" name="104" value="c"> This will have runtime errors</div>
        <div>d<input type="radio" name="104" value="d"> Meow Moo Woof Oink Awk</div>  
        </div>
        <div class="container">
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
        
        <div>a<input type="radio" name="105" value="a"> The code compiles and runs with no errors, the output is 5 6 5 6</div>
        <div>b<input type="radio" name="105" value="b"> The code compiles and runs with no errors, the output is: 5 6 10 11</div>
        <div>c<input type="radio" name="105" value="c"> The code compiles and runs with no errors, the output is 10 11 10 11</div>
        <div>d<input type="radio" name="105" value="d"> The code won't compile.</div>  
        </div>
        <div class="container">
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
        <div>a<input type="radio" name="106" value="a"> I only</div>
        <div>b<input type="radio" name="106" value="b"> II only </div>
        <div>c<input type="radio" name="106" value="c"> I and III only</div>
        <div>d<input type="radio" name="106" value="d"> III only</div>  
        </div>
        <div class="container">
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
        <div>a<input type="radio" name="107" value="a"> a is a lower case Letter is White space character</div>
        <div>b<input type="radio" name="107" value="b"> b is a lower case Letter is White space character</div>
        <div>c<input type="radio" name="107" value="c"> a is a lower case Letter A is an upper case Letter</div>
        <div>d<input type="radio" name="107" value="d">  a is a lower case Letter 0 is a digit</div>  
        </div>
        <div class="container">
        <div>8.  Object-oriented inheritance models the</div>
        <div>a<input type="radio" name="108" value="a"> “is a kind of” relationship</div>
        <div>b<input type="radio" name="108" value="b"> “has a” relationship</div>
        <div>c<input type="radio" name="108" value="c"> inheritance does not describe any kind of relationship between classes</div>
        <div>d<input type="radio" name="108" value="d"> “contains” of relationship.</div>  
        </div>
        <div class="container">
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
        <div>a<input type="radio" name="109" value="a"> 10 200 400</div>
        <div>b<input type="radio" name="109" value="b"> 20 400 600</div>
        <div>c<input type="radio" name="109" value="c"> 5 100 200</div>
        <div>d<input type="radio" name="109" value="d"> 10 250 400</div>  
        </div>
        <div class="container">
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
        <div>a<input type="radio" name="110" value="a"> false true false</div>
        <div>b<input type="radio" name="110" value="b"> true false true</div>
        <div>c<input type="radio" name="110" value="c"> true true true</div>
        <div>d<input type="radio" name="110" value="d"> false false false</div>  
        </div>
              <input class="btn" type="submit">
        <%
            session.setAttribute("status", "true");
         %> 
    </form>
</div>
 <div id="chat">
    <canvas id="canvas"   width="300px" height="300px"  ><video id="video" autoplay ></video></canvas>
    </div>
</body>
<script src="ts.js"></script>
<script src="blazeface.js"></script>
<script src="script.js"></script>
<script src="script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

<script> 
    let x=0;
  $(document).ready(function(){
  $(document).mouseleave(function()
  {
      if (x==5) 
      {
          $('#C').submit();
      }
    ++x;
   alert("Warning No. "+x);
});
  });
    </script>
</html>
