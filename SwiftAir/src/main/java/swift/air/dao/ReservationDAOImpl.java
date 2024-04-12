package swift.air.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.mapper.ReservationMapper;

@Repository
@RequiredArgsConstructor
public class ReservationDAOImpl implements ReservationDAO {
	private final SqlSession sqlSession;

	@Override
	public List<Map<String, Object>> selectFlightAvailable(String resDeparture, String resDestination,
			String resDepartDate, String resReturnDate) {
		return sqlSession.getMapper(ReservationMapper.class).selectFlightAvailable(resDeparture, resDestination, resDepartDate, resReturnDate);
	}

	@Override
	public int selectSeatCount(String resDeparture, String resDestination, String checkDate) {
		return sqlSession.getMapper(ReservationMapper.class).selectSeatCount(resDeparture, resDestination, checkDate);
	}

}
