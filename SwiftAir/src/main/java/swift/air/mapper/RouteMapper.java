package swift.air.mapper;


import java.util.List;

import swift.air.dto.Route;

public interface RouteMapper {
	Route selectRouteByFlight(String routeFlight);
	List<Route> selectAllRoutes();
}
