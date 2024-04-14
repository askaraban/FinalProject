package swift.air.service;


import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.RouteDAO;
import swift.air.dto.Route;

@Service
@RequiredArgsConstructor
public class RouteServiceImpl implements RouteService{
	private final RouteDAO routeDAO;
	
	@Override
	public Route getRouteByFlight(String routeFlight) {
		return routeDAO.selectRouteByFlight(routeFlight);
	}

	@Override
	public List<Route> getAllRoutes() {
		return routeDAO.selectAllRoutes();
	}
}