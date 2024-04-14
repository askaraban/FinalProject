
package swift.air.mapper;

import swift.air.dto.Passenger;
import swift.air.dto.PassengerReservation;

public interface ReservationMapper {
	//List<Map<String, Object>> selectFlightAvailable(String resDeparture, String resDestination, String resDepartDate, String resReturnDate);
	Passenger selectFlight(String resDeparture, String resDestination, String resDepartDate);
	int selectSeatCount(String resDeparture, String resDestination, String checkDate);
	PassengerReservation chooseFlight(String departureDate,String departure, String arrival);
}
