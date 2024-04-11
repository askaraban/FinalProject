package swift.air.dto;

import lombok.Builder;
import lombok.Data;

/*
Name              Null?    Type         
----------------- -------- ------------ 
ROUTE_ID          NOT NULL NUMBER       
ROUTE_DEPARTURE            VARCHAR2(50) 
ROUTE_DESTINATION          VARCHAR2(50) 
ROUTE_TIME                 VARCHAR2(30) 
ROUTE_PRICE                NUMBER       
ROUTE_FLIGHT               VARCHAR2(30) 
 */

@Builder
@Data
public class Route {
	private int routeId;
	private String routeDeparture;
	private String routeDestination;
	private String routeTime;
	private int routePrice;
	private String routeFlight;
}