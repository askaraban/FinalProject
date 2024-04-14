package swift.air.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Route;
import swift.air.mapper.RouteMapper;

@Repository
@RequiredArgsConstructor
@Primary
public class RouteDAOImpl implements RouteDAO{
	private final SqlSession sqlSession;

	@Override
	public Route selectRouteByFlight(String routeFlight) {
		return sqlSession.getMapper(RouteMapper.class).selectRouteByFlight(routeFlight);
	}

	@Override
	public List<Route> selectAllRoutes() {
		return sqlSession.getMapper(RouteMapper.class).selectAllRoutes();
	}

}