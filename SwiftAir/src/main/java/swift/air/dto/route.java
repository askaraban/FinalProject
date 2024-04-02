package swift.air.dto;

import lombok.Data;

/*
create table route(
    route_id NUMBER PRIMARY KEY
    , route_departure VARCHAR2(50) REFERENCES airport(airport_name)
    , route_destination VARCHAR2(50) REFERENCES airport(airport_name)
    , route_time VARCHAR2(30)
    , route_price NUMBER);

create SEQUENCE route_seq;
 */

@Data
public class route {
	int routeId;
	String routeDeparture;
	String routeDestination;
	String routeTime;
	int routePrice;
}
