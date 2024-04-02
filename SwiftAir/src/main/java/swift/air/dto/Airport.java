package swift.air.dto;

import lombok.Builder;
import lombok.Data;

/*
이름             널?       유형           
-------------- -------- ------------ 
AIRPORT_ID     NOT NULL NUMBER       
AIRPORT_REGION          VARCHAR2(50) 
AIRPORT_NAME            VARCHAR2(50) 
*/

@Data
@Builder
public class Airport {
	private int airportId;
	private String airportRegion;
	private String airportName;
}
