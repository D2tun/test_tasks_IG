/* Дано целое число m. Получите наибольшее целое k, при котором 4 в степени k
 * меньше m. Написать код на любом ЯП и нарисовать блок-схему алгоритма.
 */

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Введите целое число m");
		int m = sc.nextInt();
		
		int k = (int) (Math.log10(m) / Math.log10(4));
		if (Math.pow(4, k) == m) {
			--k;
		}
		
		System.out.println("Наибольшее целое k = " + k);
		sc.close();
	}

}
