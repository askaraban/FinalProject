package swift.air.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.ReservationDAO;

@Service
@RequiredArgsConstructor
public class ReservationServiceImpl implements ReservationService {
	private final ReservationDAO reservationDAO;

	@Override
	public List<Map<String, Object>> getFlightAvailable(String resDeparture, String resDestination,
			String resDepartDate, String resReturnDate) {
		return reservationDAO.selectFlightAvailable(resDeparture, resDestination, resDepartDate, resReturnDate);
	}
	
	@Override
	public int getSeatCount(String resDeparture, String resDestination, String checkDate) {
		return reservationDAO.selectSeatCount(resDeparture, resDestination, checkDate);
	}



}
