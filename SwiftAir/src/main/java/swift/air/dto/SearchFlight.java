package swift.air.dto;

import lombok.Data;

@Data
public class SearchFlight {
	private int scheduleId;
	private String routeDeparture;
	private String routeDestination;
	private String scheduleDepartureDate;
	private String scheduleArrivalDate;
	private String scheduleFlight;
}
