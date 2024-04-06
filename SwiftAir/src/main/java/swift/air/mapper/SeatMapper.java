package swift.air.mapper;

import java.util.List;

import swift.air.dto.Seat;


public interface SeatMapper {
	
	List<String> selectReservedSeatList();
	List<Seat> selectSeatList();
	
}