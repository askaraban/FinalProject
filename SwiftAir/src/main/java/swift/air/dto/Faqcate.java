package swift.air.dto;

import lombok.Builder;
import lombok.Data;

/*
 이름            널?       유형           
------------- -------- ------------ 
FAQ_CATE_ID   NOT NULL NUMBER       
FAQ_CATE_NAME          VARCHAR2(20) 
*/

@Data
@Builder
public class Faqcate {
	private int faqCateId;
	private String faqCateName;
}
