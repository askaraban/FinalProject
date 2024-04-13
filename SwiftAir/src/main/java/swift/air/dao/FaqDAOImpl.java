package swift.air.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Faq;
import swift.air.mapper.FaqMapper;

@Repository
@RequiredArgsConstructor
public class FaqDAOImpl implements FaqDAO {
	private final SqlSession sqlSession;
	
	@Override
		public int insertFaq(Faq faq) {
			return sqlSession.getMapper(FaqMapper.class).insertFaq(faq);
		}
	
	@Override
	public int updateFaq(Faq faq) {
		return sqlSession.getMapper(FaqMapper.class).updateFaq(faq);
	}
	
	@Override
	public int deleteFaq(int faqId) {
		return sqlSession.getMapper(FaqMapper.class).deleteFaq(faqId);
	}
	
	@Override
	public Faq selectFaq(int faqId) {
		return sqlSession.getMapper(FaqMapper.class).selectFaq(faqId);
	}
	
	@Override
	public int selectFaqCount(int categoryId) {
		return sqlSession.getMapper(FaqMapper.class).selectFaqCount(categoryId);
	}
	
	/*
	@Override
	public List<Map<String, Object>> selectFaqList(Map<String, Object> map) {
		return sqlSession.getMapper(FaqMapper.class).selectFaqList(map);
	}
	*/
	
	@Override
	public List<Faq> selectFaqList(Map<String, Object> map) {
		return sqlSession.getMapper(FaqMapper.class).selectFaqList(map);
	}
	
	
}
