package swift.air.dto;

import lombok.Builder;
import lombok.Data;

/*
create table refund(
	    refund_standard NUMBER
	    , refund_fee NUMBER);
*/

@Data
@Builder
public class Refund {
	private int refundStandard;
	private int refundFee;
}