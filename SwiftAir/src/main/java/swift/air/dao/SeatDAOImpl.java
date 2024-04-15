package swift.air.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Seat;
import swift.air.mapper.SeatMapper;

@Repository
@RequiredArgsConstructor
public class SeatDAOImpl implements SeatDAO{
	private final SqlSession session;

	@Override
	public List<String> selectReservedSeatList(String scheduleId) {
		
		return session.getMapper(SeatMapper.class).selectReservedSeatList(scheduleId);
	}

	@Override
	public List<Seat> selectSeatList() {
		
		return session.getMapper(SeatMapper.class).selectSeatList();
	}
	
}