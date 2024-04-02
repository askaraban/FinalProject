package swift.air.dto;

import lombok.Builder;
import lombok.Data;

/*
 이름          널?       유형             
----------- -------- -------------- 
FAQ_ID      NOT NULL NUMBER         
FAQ_TITLE            VARCHAR2(50)   
FAQ_CONTENT          VARCHAR2(1000) 
FAQ_DATE             DATE           
FAQ_CATE             NUMBER  
*/

@Data
@Builder
public class Faq {
	private int faqId;
	private String faqTitle;
	private String faqContent;
	private String faqDate;
	private int faqCate;
	
}
