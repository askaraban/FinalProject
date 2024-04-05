package swift.air.dto;

import lombok.Data;

@Data
public class SeatReserved {
	private Passenger passenger;
	private Schedule schedule;
	private Payment payment;
}
