package swift.air.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Passenger;
import swift.air.dto.PassengerReservation;
import swift.air.mapper.ReservationMapper;

@Repository
@RequiredArgsConstructor
public class ReservationDAOImpl implements ReservationDAO {
	private final SqlSession sqlSession;

	@Override
	public Passenger selectFlight(String resDeparture, String resDestination, String resDepartDate) {
		return sqlSession.getMapper(ReservationMapper.class).selectFlight(resDeparture, resDestination, resDepartDate);
	}

	@Override
	public int selectSeatCount(String resDeparture, String resDestination, String checkDate) {
		return sqlSession.getMapper(ReservationMapper.class).selectSeatCount(resDeparture, resDestination, checkDate);
	}

	@Override
	public PassengerReservation chooseFlight(String departureDate, String departure, String arrival) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ReservationMapper.class).chooseFlight(departureDate, departure, arrival);
	}




}
