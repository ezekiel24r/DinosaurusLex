//class for testing extends, implements and interface
class test() extends Object implements interface Comparable{ 
	//get function tests newarray
	int get(int[] num){
	
		for(int i = 0; i < num.length; i = i + 1){
			if(num[i] < 5)
				return false;
		}	
	}
	/*
	main function with boolean variables
	does various computations
	*/
	public static void main(String args[]){
		int CONST_NUM = 0x10bF;
		double CONST_DUB = 14.;
		double CONST_DUB2 = .8;
		double var = 8.3E+3;
		int a = 5;
		String A = "hello";
		boolean Boolean = true;
		double trueintfor = 16.2;
		boolean even;
		boolean greater;
		boolean comp;
		//creates a newarray
		int[] arr = {2,4,6,8};
		//variables implemented with newarray and readln
		String test = readln;
		double[] arr2 = newarray;
		boolean checkArr = get(arr);
	
		if(CONST_DUB % 2 == 0 && a <= 6)
			even = true;
		else
			even = false;
	
		a = a + 6;
		trueintfor = trueintfor * 2;
		//tests trueintfor to set greater to true or false
		if(trueintfor >= 10 || a >= 10)
			greater = true;
		else
			greater = false;
	
		trueintfor = trueintfor - 4.2;
		trueintfor = trueintfor / 3;
	
		even = !(Boolean);
		if(trueintfor > 5 || a < 10)
			greater = true;
		else
			greater = false;
		//tests if even != to greater
		if(even != greater)
			comp = false;
		else
			comp = true;
		//implements while and break statements
		while(trueintfor > 0){
			trueintfor = trueintfor - 1;
			if(trueintfor == 1)
				break;
		}
		//println statement
		System.out.println("End of main.");
	}
}	