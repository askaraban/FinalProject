package swift.air.dto;

import lombok.Builder;
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
@Builder
public class Schedule {
    private String scheduleId;
    private String scheduleDepartureDate;
    private String scheduleArrivalDate;
    private String scheduleFlight;
    private int scheduleRouteId;
}
