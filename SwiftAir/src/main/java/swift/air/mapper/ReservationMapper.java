
package swift.air.mapper;

import swift.air.dto.Passenger;

public interface ReservationMapper {
	//List<Map<String, Object>> selectFlightAvailable(String resDeparture, String resDestination, String resDepartDate, String resReturnDate);
	Passenger selectFlight(String resDeparture, String resDestination, String resDepartDate);
	int selectSeatCount(String resDeparture, String resDestination, String checkDate);
}
