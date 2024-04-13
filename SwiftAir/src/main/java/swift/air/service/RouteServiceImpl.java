package swift.air.service;


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
}