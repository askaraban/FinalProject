package swift.air.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Notice;
import swift.air.mapper.NoticeMapper;

@Repository
@RequiredArgsConstructor
public class NoticeDAOImpl implements NoticeDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertNotice(Notice notice) {
		return sqlSession.getMapper(NoticeMapper.class).insertNotice(notice);
	}
	
	@Override
	public int updateNotice(Notice notice) {
		return sqlSession.getMapper(NoticeMapper.class).updateNotice(notice);
	}

	@Override
	public int deleteNotice(int noticeId) {
		return sqlSession.getMapper(NoticeMapper.class).deleteNotice(noticeId);
	}

	@Override
	public Notice selectNotice(int noticeId) {
		return sqlSession.getMapper(NoticeMapper.class).selectNotice(noticeId);
	}

	@Override
	public int selectNoticeCount() {
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeCount();
	}

	@Override
	public List<Notice> selectNoticeList(Map<String, Object> map) {
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeList(map);
	}
	
}
