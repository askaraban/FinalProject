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
		return sqlSession.getMapper(PaymentMapper.class).insertPassenger(passenger);
	}

	@Override
	public int deletePayment(int paymentId) {
		return sqlSession.getMapper(PaymentMapper.class).deletePayment(paymentId);
	}

	@Override
	public int deletePassenger(int paymentId) {
		return sqlSession.getMapper(PaymentMapper.class).deletePassenger(paymentId);
	}

}
