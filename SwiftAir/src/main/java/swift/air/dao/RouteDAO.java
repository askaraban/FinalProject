package swift.air.dao;


import swift.air.dto.Route;

public interface RouteDAO {
	Route selectRouteByFlight(String routeFlight);
}
