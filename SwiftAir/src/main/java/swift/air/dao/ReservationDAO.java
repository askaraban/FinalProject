package swift.air.dao;

import swift.air.dto.Passenger;
import swift.air.dto.PassengerReservation;

public interface ReservationDAO {
	Passenger selectFlight(String resDeparture, String resDestination, String resDepartDate);
	int selectSeatCount(String resDeparture, String resDestination, String checkDate);
	PassengerReservation chooseFlight(String departureDate,String departure, String arrival);
}
