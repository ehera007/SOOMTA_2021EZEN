package controller.main;

public class RandomPw {
	public static String newRandomPw(int len) { 
		char[] charSet = new char[] { '0', '1', '2', '3', '4', 
				'5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 
				'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
				'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 
				'Y', 'Z' 
				}; 
		int idx1 = 0; 
		String  sb1 = ""; 
		for (int i = 0; i < len; i++) { 
			idx1 = (int) (charSet.length * Math.random()); // 36 * 생성된 난수를 Int로 추출 (소숫점제거) 
			sb1 += charSet[idx1]; 
		} 
		return sb1.toString();				
	}
}