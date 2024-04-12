package swift.air.dao;

import swift.air.dto.Passenger;

public interface ReservationDAO {
	Passenger selectFlight(String resDeparture, String resDestination, String resDepartDate);
	int selectSeatCount(String resDeparture, String resDestination, String checkDate);
}
