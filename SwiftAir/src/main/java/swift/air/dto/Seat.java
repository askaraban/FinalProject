package swift.air.dto;

import lombok.Builder;
import lombok.Data;

/*
 컬럼명 제약조건 타입
-------- -----   -----  
SEAT_NAME PK VARCHAR2(10)
SEAT_GRADE VARCHAR2(10)
SEAT_PRICE NUMBER
*/


@Data
@Builder
public class Seat {

	private String seatName;
	private String seatGrade;
	private int seatPrice;
}
