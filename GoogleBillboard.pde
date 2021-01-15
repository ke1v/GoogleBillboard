public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
	//Part 1
        for (int i = 2; i < e.length()-9; i++) {
        	double numCheck = Double.parseDouble(e.substring(i, i+10));
        	if (isPrime(numCheck)) {
        		System.out.println(numCheck);
        	}
        }
        
        //Part 2
        for (int i = 2; i < e.length()-9; i++) {
        	if (sumOfDigits(e.substring(i, i+10)) == 49) {
        		System.out.println(e.substring(i, i+10));
        	}
        }
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double num)  
{   
	if (num <= 3) {
	  return num == 2 || num == 3;
	}
	if (num % 2 == 0 || num % 3 == 0) {
	  return false;
	 }
	for (int i = 2; i <= Math.sqrt(num); i++) {
	  if (num % i == 0) {
	    return false;
	  }
	}
	return true;
	}	
} 

public double sumOfDigits(String num) {
	double sum = 0;
	for (int i = 0; i < num.length(); i++) {
		sum += Double.parseDouble(num.substring(i, i+1));
	}
	return sum;
}
