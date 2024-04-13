package swift.air.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.mapper.PaymentMapper;

@Repository
@RequiredArgsConstructor
public class PaymentDAOImpl implements PaymentDAO {
	private final SqlSession sqlSession;

	@Override
	public int insertPayment() {
		return sqlSession.getMapper(PaymentMapper.class).insertPayment();
	}


}
