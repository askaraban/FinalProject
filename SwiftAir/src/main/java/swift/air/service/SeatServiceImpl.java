package swift.air.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.SeatDAO;
import swift.air.dto.Seat;

@Service
@RequiredArgsConstructor
public class SeatServiceImpl implements SeatService{
	private final SeatDAO seatDAO;

	@Override
	public List<String> getReservedSeatList() {
		
		return seatDAO.selectReservedSeatList(); 
	}

	@Override
	public List<Seat> getSeatList() {
		// TODO Auto-generated method stub
		return seatDAO.selectSeatList();
	}
	
}
