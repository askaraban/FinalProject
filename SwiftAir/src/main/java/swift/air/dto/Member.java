package swift.air.dto;

import lombok.Data;

/*
Name                 Null?    Type         
-------------------- -------- ------------ 
MEMBER_NUM           NOT NULL NUMBER       
MEMBER_ID                     VARCHAR2(50) 
MEMBER_PSWD                   VARCHAR2(50) 
MEMBER_KOR_NAME               VARCHAR2(20) 
MEMBER_LAST_NAME              VARCHAR2(20) 
MEMBER_FIRST_NAME             VARCHAR2(20) 
MEMBER_EMAIL                  VARCHAR2(50) 
MEMBER_PHONE                  VARCHAR2(20) 
MEMBER_GENDER                 NUMBER(1)    
MEMBER_BIRTH                  VARCHAR2(20) 
MEMBER_JOIN_DATE              DATE         
MEMBER_WITHDRAW_DATE          DATE         
MEMBER_POINT                  NUMBER       
MEMBER_STATUS                 NUMBER(1)  
 */
 
@Data
public class Member {
	private int memberNum;
	private String memberId;
	private String memberPswd;
	private String memberKorName;
	private String memberLastName;
	private String memberFirstName;
	private String memberEmail;
	private String memberPhone;
	private int memberGender;
	private String memberBirth;
	private String memberJoinDate;
	private String memberWithdrawDate;
	private int memberPoint;
	private int memberStatus;
}
