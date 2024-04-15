package swift.air.dao;

import java.util.List;

import swift.air.dto.Passenger;
import swift.air.dto.Seat;

public interface SeatDAO {
	List<String> selectReservedSeatList(String scheduleId);
	List<Seat> selectSeatList();
}