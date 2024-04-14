package swift.air.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Passenger;
import swift.air.dto.Payment;
import swift.air.mapper.PaymentMapper;

@Repository
@RequiredArgsConstructor
public class PaymentDAOImpl implements PaymentDAO {
	private final SqlSession sqlSession;

	@Override
	public int insertPayment(Payment payment) {
		return sqlSession.getMapper(PaymentMapper.class).insertPayment(payment);
	}

	@Override
	public int insertPassenger(Passenger passenger) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletePayment(int paymentId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletePassenger(int paymentId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
