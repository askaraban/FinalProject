package swift.air.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.ReservationDAO;
import swift.air.dto.Passenger;
import swift.air.dto.PassengerReservation;

@Service
@RequiredArgsConstructor
public class ReservationServiceImpl implements ReservationService {
	private final ReservationDAO reservationDAO;

	@Override
	public Passenger getFlight(String resDeparture, String resDestination, String resDepartDate) {
		return reservationDAO.selectFlight(resDeparture, resDestination, resDepartDate);
	}
	
	@Override
	public int getSeatCount(String resDeparture, String resDestination, String checkDate) {
		return reservationDAO.selectSeatCount(resDeparture, resDestination, checkDate);
	}

	@Override
	public PassengerReservation chooseFlight(String departureDate, String departure, String arrival) {
		// TODO Auto-generated method stub
		return reservationDAO.chooseFlight(departureDate, departure, arrival);
	}
}
