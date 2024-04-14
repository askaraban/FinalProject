package swift.air.dto;

import lombok.Data;

@Data
public class PassengerReservation {
	private String scheduleId;
	private String scheduleDepartureDate;
	private String scheduleArrivalDate;
	private String routeDeparture;
	private String routeDestination;
	private String routeFlight;
	private int routePrice;
}
