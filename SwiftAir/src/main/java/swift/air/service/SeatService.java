package swift.air.service;

import java.util.List;

import swift.air.dto.Seat;

public interface SeatService {
	List<String> getReservedSeatList();
	List<Seat> getSeatList();
}
