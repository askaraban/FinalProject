package swift.air.dto;

import lombok.Data;

/*
이름                  널?       유형           
------------------- -------- ------------ 
PAYMENT_ID          NOT NULL VARCHAR2(20) 
PAYMENT_ADULT                NUMBER       
PAYMENT_CHILD                NUMBER       
PAYMENT_MEMBER_NUM           NUMBER       
PAYMENT_SCHEDULE_ID          VARCHAR2(20) 
PAYMENT_DATE                 DATE         
PAYMENT_TOTAL                NUMBER       
PAYMENT_STATUS               NUMBER(1)    
PAYMENT_METHOD               NUMBER 
*/

@Data
public class Payment {
	private String paymentId; 
	private int paymentPassenger; 
	private int paymentMemberNum; 
	private String paymentScheduleId1; 
	private String paymentScheduleId2; 
	private String paymentDate; 
	private int paymentTotal; 
	private int paymentStatus; 
	private int paymentMethod; 
	private String routeDeparture;
	private String routeDestination;
	private String scheduleFlight;
}
