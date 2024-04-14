package swift.air.service;


import java.util.List;

import swift.air.dto.Route;


public interface RouteService {
	Route getRouteByFlight(String routeFlight);
	List<Route> getAllRoutes();
}
