package swift.air.dto;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

/*
�씠由�            �꼸?       �쑀�삎             
------------- -------- -------------- 
EVENT_ID      NOT NULL NUMBER         
EVENT_DATE             DATE           
EVENT_TITLE            VARCHAR2(100)  
EVENT_CONTENT          VARCHAR2(1000) 
EVENT_IMG1             VARCHAR2(100)  
EVENT_IMG2             VARCHAR2(100)  
EVENT_START            DATE           
EVENT_END              DATE           
EVENT_NOTICE           VARCHAR2(100)  
EVENT_STATUS           NUMBER(1)
*/

@Data
public class Event {
	private int eventId;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private String eventDate;
	private String eventTitle;
	private String eventContent;
	private String eventImg1;
	private String eventImg2;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private String eventStart;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private String eventEnd;
	private String eventNotice;
	private int eventStatus;
}
