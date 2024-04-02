package swift.air.dto;

import lombok.Data;

/*
create table refund(
	    refund_standard NUMBER
	    , refund_fee NUMBER);
*/

@Data
public class refund {
	int refundStandard;
	int refundFee;
}
