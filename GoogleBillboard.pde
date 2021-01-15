public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
	for (int i = 2; i < e.length(); i++) {
		double numCheck = Double.parseDouble(e.substring(i, i+10));
		if (isPrime(numCheck)) {
			System.out.println(numCheck);
			break;
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
