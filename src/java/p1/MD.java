package p1;


import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class MD 
{
    public static StringBuffer MD5(String password) 
    {
         StringBuffer hashedPassword =new StringBuffer();
        try
        {
        MessageDigest md= MessageDigest.getInstance("MD5");
        md.update(password.getBytes());
        byte[] digest= md.digest();
       
        String hex;
        for(int i=0;i<digest.length;i++)
        {
          hex=Integer.toHexString(0xFF & digest[i]);
          if(hex.length()==1) {hex="0"+hex;}
          hashedPassword.append(hex);
        }
   
            //System.out.println(hashedPassword);    
        }catch(NoSuchAlgorithmException e)
        {
            System.out.println(e);
        }
             return hashedPassword;
    }
    
}
