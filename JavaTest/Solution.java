/*check if array has pairs of equal numbers*/

import java.io.*;
import java.util.Arrays;
import java.lang.*;
public class Solution {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        BufferedReader br = null;
		try {
			br = new BufferedReader(new FileReader("C:\\eclipse-workspace\\Selenium\\Test\\test-input.txt"));
 			String s = br.readLine();
 			String[] sNums =s.split(",");
 			int[] A = new int[sNums.length];
 			int count =0;
 			for (int i = 0; i < sNums.length; i++) 
 	        {
 				A[count] = Integer.parseInt(sNums[i]); 
 				count++;
 	        }
 			Solution sol = new Solution();
 			boolean res = sol.solution(A);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean solution(int[] A) {
        // write your code in Java SE 8
		int res =1;
		Arrays.sort(A);
		if (A.length % 2 >0)
			{return false;}
		int i = 0;
		while (i < A.length/2)
		{
			if (A[i]!= A[i+1])
			{
				return false;
			}
			i=i+2;
		}
		return true;
    }

}
