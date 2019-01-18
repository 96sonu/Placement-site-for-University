package Test;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public class OtpDemo 
{    
	public static void main(String[] args) 
	{    
/*        Random rndm_method = new Random();
        int otp = 0; 
 
        for (int i = 0; i < 4; i++)
        {
            otp = otp + ((int) Math.pow(10, i) * rndm_method.nextInt(10));
        }
        System.out.print("Your OTP is : "+ otp);
        */
        int randomNum = ThreadLocalRandom.current().nextInt(0000, 9998 + 1);
        
        System.out.print("Your OTP is : "+ randomNum);
        
        
	    
}
}
