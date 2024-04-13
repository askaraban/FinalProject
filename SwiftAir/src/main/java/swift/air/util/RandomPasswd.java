package swift.air.util;

import org.apache.commons.lang.RandomStringUtils;

public class RandomPasswd {
	public static String randomPasswd(int length) {
		 if (length < 6 || length > 20) {
	            throw new IllegalArgumentException("비밀번호 길이는 6~20자리여야 합니다.");
	        }
	        
	        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%";
	        return RandomStringUtils.random(length, characters);
	    }
	}