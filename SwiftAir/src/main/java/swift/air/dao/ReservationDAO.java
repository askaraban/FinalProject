package swift.air.dao;

import java.util.List;
import java.util.Map;

public interface ReservationDAO {
	List<Map<String, Object>> selectFlightAvailable(String resDeparture, String resDestination, String resDepartDate, String resReturnDate);
	int selectSeatCount(String resDeparture, String resDestination, String checkDate);
}
