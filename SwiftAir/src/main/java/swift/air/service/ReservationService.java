package swift.air.service;

import java.util.List;
import java.util.Map;

public interface ReservationService {
	List<Map<String, Object>> getFlightAvailable(String resDeparture, String resDestination, String resDepartDate, String resReturnDate);
	int getSeatCount(String resDeparture, String resDestination, String checkDate);
}
