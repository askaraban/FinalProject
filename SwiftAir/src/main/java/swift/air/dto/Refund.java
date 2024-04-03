package swift.air.dto;

import lombok.Builder;
import lombok.Data;

/*
Name            Null? Type   
--------------- ----- ------ 
REFUND_STANDARD       NUMBER 
REFUND_FEE            NUMBER 
*/

@Data
@Builder
public class Refund {
	private int refundStandard;
	private int refundFee;
}