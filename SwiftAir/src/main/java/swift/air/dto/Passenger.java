package swift.air.dto;

import lombok.Data;

/*
이름                     널? 유형           
---------------------- -- ------------ 
PASSENGER_LAST_NAME       VARCHAR2(20) 
PASSENGER_FIRST_NAME      VARCHAR2(20) 
PASSENGER_BIRTH           DATE         
PASSENGER_PAYMENT_ID      VARCHAR2(20) 
PASSENGER_SEAT_NAME1      VARCHAR2(10) 
PASSENGER_SCHEDULE_ID1    VARCHAR2(20) 
PASSENGER_SEAT_NAME2      VARCHAR2(10) 
PASSENGER_SCHEDULE_ID2    VARCHAR2(10)
*/

@Data
public class Passenger {
	private String passengerLastName; 
	private String passengerFirstName; 
	private String passengerBirth; 
	private String passengerPaymentId; 
	private String passengerSeatName1;
	private String passengerScheduleId1;
	private String passengerSeatName2;
	private String passengerScheduleId2;
}
