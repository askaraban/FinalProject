package swift.air.mapper;


import swift.air.dto.Route;

public interface RouteMapper {
	Route selectRouteByFlight(String routeFlight);
}
