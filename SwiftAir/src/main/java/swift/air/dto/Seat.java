package swift.air.dto;

import lombok.Builder;
import lombok.Data;

/*
Name       Null?    Type         
---------- -------- ------------ 
SEAT_NAME  NOT NULL VARCHAR2(10) 
SEAT_GRADE          VARCHAR2(10) 
SEAT_PRICE          NUMBER   
*/


@Data
@Builder
public class Seat {

	private String seatName;
	private String seatGrade;
	private int seatPrice;
}
