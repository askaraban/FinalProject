package swift.air.dto;

import lombok.Data;

@Data
public class Search {
	private String paymentId;
	private String routeDeparture;
	private String routeDestination;
	private String routeFlight;
	private String scheduleDepartureDate;
	private String scheduleArrivalDate;
	private int paymentTotal;
	private int paymentMethod; // 0 일반결제, 1 포인트결제
}
