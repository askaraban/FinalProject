package swift.air.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Route;
import swift.air.mapper.RouteMapper;

@Repository
@RequiredArgsConstructor
public class RouteDAOImpl implements RouteDAO{
	private final SqlSession sqlSession;

	@Override
	public Route selectRouteByFlight(String routeFlight) {
		return sqlSession.getMapper(RouteMapper.class).selectRouteByFlight(routeFlight);
	}

}