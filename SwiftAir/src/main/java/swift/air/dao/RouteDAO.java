package swift.air.dao;


import java.util.List;

import swift.air.dto.Route;

public interface RouteDAO {
	Route selectRouteByFlight(String routeFlight);
	List<Route> selectAllRoutes();
}
