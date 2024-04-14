package swift.air.dto;

import lombok.Data;

/*
이름                    널? 유형           
--------------------- -- ------------ 
PASSENGER_LAST_NAME      VARCHAR2(20) 
PASSENGER_FIRST_NAME     VARCHAR2(20) 
PASSENGER_BIRTH          DATE         
PASSENGER_PAYMENT_ID     VARCHAR2(20) 
PASSENGER_SEAT_NAME      VARCHAR2(10) 
PASSENGER_SCHEDULE_ID    VARCHAR2(20)
*/

@Data
public class Passenger {
	private String passengerLastName; 
	private String passengerFirstName; 
	private String passengerBirth; 
	private String passengerPaymentId; 
	private String passengerSeatName;
	private String passengerScheduleId;
	
	private String scheduleId;
	private String scheduleDepartureDate;
	private String scheduleArrivalDate;
	private String routeDeparture;
	private String routeDestination;
	private String routeFlight;
	private int routePrice;
	private String seatName;
	private String seatGrade;
	private String checkDate;
	
}
