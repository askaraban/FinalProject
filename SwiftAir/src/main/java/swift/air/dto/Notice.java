package swift.air.dto;

import lombok.Data;

/*
Name           Null?    Type           
-------------- -------- -------------- 
NOTICE_ID      NOT NULL NUMBER         
NOTICE_TITLE            VARCHAR2(50)   
NOTICE_CONTENT          VARCHAR2(1000) 
NOTICE_DATE             DATE    
*/

@Data
public class Notice {
	private int noticeId;
	private String noticeTitle;
	private String noticeContent; 
	private String noticeDate;
}
