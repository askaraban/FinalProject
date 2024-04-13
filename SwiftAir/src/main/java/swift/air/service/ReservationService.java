package swift.air.service;

import swift.air.dto.Passenger;
import swift.air.dto.PassengerReservation;

public interface ReservationService {
	Passenger getFlight(String resDeparture, String resDestination, String resDepartDate);
	int getSeatCount(String resDeparture, String resDestination, String checkDate);
	PassengerReservation chooseFlight(String departureDate, String departure, String arrival);
}
