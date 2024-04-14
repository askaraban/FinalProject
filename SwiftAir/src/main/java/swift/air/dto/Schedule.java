package swift.air.dto;

import lombok.Data;

/*
Name                    Null?    Type         
----------------------- -------- ------------ 
SCHEDULE_ID             NOT NULL VARCHAR2(20) 
SCHEDULE_DEPARTURE_DATE          DATE         
SCHEDULE_ARRIVAL_DATE            DATE         
SCHEDULE_FLIGHT                  VARCHAR2(20) 
SCHEDULE_ROUTE_ID                NUMBER   
 */

@Data
public class Schedule {
    private String scheduleId;
    private String scheduleDepartureDate;
    private String scheduleArrivalDate;
    private String scheduleFlight;
    private int scheduleRouteId;//노선번호
    private String routeDeparture;//출발지
	private String routeDestination;//도착지
	private String routeTime;//운항시간
	private int routePrice;//가격
}