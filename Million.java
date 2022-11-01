import java.util.Scanner;
public class Million{
	public static void main(String[] args){
		int max=1000000;
		int min=1;
		double r = Math.random();
		r*=100;
		int num = (int)r;
		Scanner input = new Scanner(System.in);
		do{
			System.out.println("Enter number from one to one million");
			int guess = input.nextInt();
			if (guess==r){
				System.out.println("Congrats! You have guessed the right number!");
			} else {
				System.out.println("That's not right. Try again!");
			}
		} while (
		

		
	}
}