
package swift.air.mapper;

import swift.air.dto.Passenger;
import swift.air.dto.Payment;

//PaymentMapper : 

// Reservation/schedule : 출발지, 도착지, 가는여정 출발일, 돌아오는여정 출발일, 인원 전송
// 1) (가는여정) 출발지, 도착지, 출발일, 탑승인원
// 2) (돌아오는여정) 출발지, 도착지, 출발일, 탑승인원 각각 정보 DB에서 불러와서 가용 여부 체크

// Reservation/seat_grade : 좌석 등급 선택 전송 (eco / pri)
// 1) 좌석 정보 불러와서 이코노미 / 프리미엄 가용 여부 체크 (불가능하면 체크 못하게)

// Reservation/passenger_info : 예매자 정보 - 영문 성, 이름, 이메일, 휴대폰 (회원 정보)
//                              탑승객 정보(*인원수) - 영문 성, 이름, 생년월일 전송

// Reservation/seat : 좌석 자리 선택 전송

// Reservation/ticket_confirm : 정보 받아서 보여주기

// Reservation/payment : 다 받아와서 결제할때 insert
public interface PaymentMapper {
	int insertPayment(Payment payment);
	int insertPassenger(Passenger passenger);
	int updatePayment(int paymentId);
	int deletePassenger(int paymentId);
	
}
