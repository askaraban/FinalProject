package swift.air.dto;

import lombok.Builder;
import lombok.Data;

/*
이름                     널? 유형           
---------------------- -- ------------ 
PASSENGER_LAST_NAME       VARCHAR2(20) 
PASSENGER_FIRST_NAME      VARCHAR2(20) 
PASSENGER_GENDER          NUMBER(1)    
PASSENGER_BIRTH           DATE         
PASSENGER_PHONE           VARCHAR2(20) 
PASSENGER_PAYMENT_ID      VARCHAR2(20) 
PASSENGER_NATIONALITY     VARCHAR2(30) 
PASSENGER_PASSPORT        VARCHAR2(20) 
PASSENGER_PASSPORT_EXP    DATE         
PASSENGER_SEAT_NAME       VARCHAR2(10)
*/

@Builder
@Data
public class Passenger {
	private String passengerLastName; 
	private String passengerFirstName; 
	private int passengerGender; 
	private String passengerBirth; 
	private String passengerPhone; 
	private String passengerPaymentId; 
	private String passengerNationality; 
	private String passengerPassport; 
	private String passengerPassportExp; 
	private String passengerSeatName; 
}
