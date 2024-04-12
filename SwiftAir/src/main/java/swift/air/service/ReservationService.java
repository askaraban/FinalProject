package swift.air.service;

import swift.air.dto.Passenger;

public interface ReservationService {
	Passenger getFlight(String resDeparture, String resDestination, String resDepartDate);
	int getSeatCount(String resDeparture, String resDestination, String checkDate);
}
