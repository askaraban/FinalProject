package swift.air.dto;

/*
POINT_ID	NUMBER
POINT_MEMBER_NUM	NUMBER
POINT_PAYMENT_ID	VARCHAR2(20 BYTE)
POINT_DATE	DATE
POINT_STATUS	NUMBER(1,0)
 */

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Point {

	private int pointId;
	private int pointMemberNum;
	private String pointPaymentId;
	private String pointDate;
	private int pointSataus;
}
