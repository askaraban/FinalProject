package swift.air.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import swift.air.dto.Member;


public class PasswdHash {
	public static String encrypt(String memberPswd) {
		
		String encryptPasswd="";
		try {
			
			MessageDigest messageDigest=MessageDigest.getInstance("SHA-256");
			
			messageDigest.update(memberPswd.getBytes());
			
			byte[] digest=messageDigest.digest();
			
			for(int i=0;i<digest.length;i++) {
				
				encryptPasswd+=Integer.toHexString(digest[i] & 0xff);
			} 
		} catch (NoSuchAlgorithmException e) {
			System.out.println("[에러]잘못된 암호화 알고리즘을 사용 하였습니다.");
		} 
		return encryptPasswd;
	}

}



