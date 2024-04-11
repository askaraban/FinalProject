package swift.air.service;


import swift.air.dto.Route;


public interface RouteService {
	Route getRouteByFlight(String routeFlight);
}
