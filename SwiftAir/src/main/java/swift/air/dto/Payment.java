package swift.air.dto;

import lombok.Data;

/*
이름                  널?       유형           
------------------- -------- ------------ 
PAYMENT_ID          NOT NULL VARCHAR2(20) 
PAYMENT_Passenger            NUMBER       
PAYMENT_MEMBER_NUM           NUMBER       
PAYMENT_SCHEDULE_ID          VARCHAR2(20) 
PAYMENT_DATE                 DATE         
PAYMENT_TOTAL                NUMBER       
PAYMENT_STATUS               NUMBER(1)    
PAYMENT_METHOD               NUMBER 
PAYMENT_impUid               VARCHAR2 
PAYMENT_merchantUid          VARCHAR2 
*/

@Data
public class Payment {
	private int paymentId; 
	private int paymentPassenger; 
	private int paymentMemberNum; 
	private String paymentScheduleId1; 
	private String paymentScheduleId2; 
	private String paymentDate; 
	private long paymentTotal; 
	private int paymentStatus; 
	private int paymentMethod; 
	private String routeDeparture;
	private String routeDestination;
	private String scheduleFlight;
	private String scheduleDepartureDate;
	private String impUid;//결제 관련 OpenApi에서 제공되는 고유값
	private String merchantUid;//결제번호
}
