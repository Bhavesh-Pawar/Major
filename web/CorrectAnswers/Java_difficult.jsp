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
    <title>Java Difficult Question</title>
    <link rel="stylesheet" type="text/css" href="test.css">
    </head>
<body background="../images/bg1.jpg">
    
    <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
            <td><img src="../images/logo.png"width="150px"height="150px"></td>
            <td class="titletheme">Test Your Skills</td>
            <td class="button button4"><a href="../index.jsp">Go to index page </a> </td>
        </tr>
      
        </table>
        <div class="correct"> <h1> Correct Answers: Java_Difficult</h1> </div>

    <div  id="question">
    <form action="get_difficult_java.jsp" name="C" id="C" method="POST">
        <div class="container">
        <div>1.  Assume that Base b = new Derived(); appears in a client program. What is the result of the call b.methodOne();?</div>
        <pre>
        public class Base
{
   public void methodOne()
   {
      System.out.print("A");
      methodTwo();
   }

   public void methodTwo()
   {
      System.out.print("B");
   }
}

public class Derived extends Base
{
   public void methodOne()
   {
      super.methodOne();
      System.out.print("C");
   }

   public void methodTwo()
   {
      super.methodTwo();
      System.out.print("D");
   }
}    
        </pre>        
        <div>a<input type="radio" name="111" value="a"> ABDC</div>
        </div>
        <div class="container">
        <div>2. If you have the following classes. Which of the following constructors would be valid for Point3D?</div>
        <pre>
            public class Point2D {
   public int x;
   public int y;

   public Point2D() {}

   public Point2D(int x,int y) {
      this.x = x;
      this.y = y;
   }
  // other methods
}

public class Point3D extends Point2D
{
   public int z;

   // other code
}

I.  public Point3D() {}
II. public Point3D(int x, int y, int z)
    {
       super(x,y);
       this.z = z;
    }
III. public Point3D(int x, int y)
     {
        this.x = x;
        this.y = y;
        this.z = 0;
     }
        </pre>
        <div>c<input type="radio" name="112" value="c"> I, II, and III</div>
        </div>
        <div class="container">
        <div>3. In Iterator, hasMoreElements() method of Enumeration has been changed to:</div>
        <div>c<input type="radio" name="113" value="c"> isNext()</div>
        </div>
        <div class="container">
        <div>4. Enumeration returned by ArrayList is</div>
        <div>a<input type="radio" name="114" value="a"> Fail-fast</div>
        </div>
        <div class="container">

        <div>5. Which of these process occur automatically by java run time system?</div>
        <div>a<input type="radio" name="115" value="a"> Serialization</div>
        </div>
        <div class="container">

        <div>6.  Which of these classes is not included in java.lang?</div>
        <div>c<input type="radio" name="116" value="c">  Array</div>
        </div>
        <div class="container">

        <div>7. What is the output of the following code snippet?</div>
        <pre>
            public class Tester {
    Public static void main (String[ ] args) {
           for(int loop = 0;loop < 5;loop++) {
                 if(loop > 2) {
                      continue;
                 }
                 if(loop>4) {
                       break;
                 }
                 System.out.println(loop) ;
           }
     }
}

        </pre>
        <div>a<input type="radio" name="117" value="a"> 0 1 2</div> 
        </div>
        <div class="container">

        <div>8. What is the output of the following code snippet?</div>
        <pre>
            class Demo{
  public static int specialAdd(int num1) {
         if (num1!=0)
              return (num1+2)+specialAdd(num1-1) ;
         else
              return 3;
  }
  public static int extraordinaryAdd(int num2) {
          if (num2!=0)
               return specialAdd(num2)+extraordinaryAdd(num2-1) ;
           else
               return 0;
  }
   public static void main (String [ ] args) {
              System.out.println( (extraordinaryAdd(5) ) ) ;
  }
}   
        </pre>
        <div>a<input type="radio" name="118" value="a"> 80</div>
      
        </div>
        <div class="container">

        <div>9. What is the output of the code given below when run with the default Junit runner?</div>
        <pre>
            class Computation {
 public int add(int num1, int num2) {
          return num1 + num2 ;
 }
 public int divide(int num1, int num2) {
          return num1 / num2 ;
 }
}
public class TestComputation {
  Computation comput = new Computation ( ) ;
  @Test
   public void testAdd1 ( ) {
          int expected = 5 ;
              int actual = comput.add(2, 3) ;
          Assert.assertEquals(expected, actual) ;
 }
 @Test
  public void testAdd2 ( ) {
           int expected = 7 ;
           int actual = comput.add(2, 5) ;
           Assert.assertEquals(expected , actual) ;
 }
}      
        </pre>
        <div>c<input type="radio" name="119" value="c"> Both testAdd1 and testAdd2 pass</div>
        </div>
        <div class="container">

        <div>10. What is the output of the following code snippet?</div>
        <pre>
            public class ExceptionExample {
   public void checkForExceptions(int num1, int num2) {
          int intArr [ ] = {1,2,3} ;
          String str = null ;
          System.out.println("Before any exception!") ;
          try{
                str.charAt(0) ;
                System.out.println(num1 / num1) ;
                System.out.println("Enjoy no exception!") ;
          }
          catch (ArithmeticException e) {
                     System.out.println("ArithmeticException handler!") ;
           } catch (NullPointerException e) {
                      System.out.println("NullPointException handler!") ;
           } catch (Exception e) {
 
                     System.out.println("Default exception handler!") ;
         } finally {
                 System.out.println("In finally!");
         }
         System.out.println("After handling exception!") ;
   }
   public static void main(String [ ] args) 
   {
          ExceptionExample exceptionExample = new ExceptionExample( ) ;
          try {
                      exceptionExample.checkForExceptions(2, 0) ;
           } catch (ArithmeticException e) {
                       System.out.println("ArithmeticException handler in main!") ;
           }
           System.out.println("End of main") ;
    }
}
        </pre>

        <div>d<input type="radio" name="120" value="d"> <pre>Before any exception!

NullPointerException handler!

In finally!

After handling exception!

End of main

</pre></div>  
        </div>
       
</div>
</body>
</html>