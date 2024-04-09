package swift.air.dto;

import lombok.Data;

@Data
public class Point {

	private int pointId;
	private int pointMemberNum;
	private String pointPaymentId;
	private String pointDate;
	private int pointStatus;
	private int pointAmount;
	private	String routeDeparture;
	private	String routeDestination;
}
