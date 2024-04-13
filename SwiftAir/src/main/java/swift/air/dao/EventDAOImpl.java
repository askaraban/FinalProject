package swift.air.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Event;
import swift.air.mapper.EventMapper;

@Repository
@RequiredArgsConstructor
public class EventDAOImpl implements EventDAO{
	private final SqlSession sqlSession;
	
	@Override
	public int insertEvent(Event event) {
		return sqlSession.getMapper(EventMapper.class).insertEvent(event);
	}

	@Override
	public int updateEvent(Event event) {
		return sqlSession.getMapper(EventMapper.class).updateEvent(event);
	}

	@Override
	public int deleteEvent(int eventId) {
		return sqlSession.getMapper(EventMapper.class).deleteEvent(eventId);
	}

	@Override
	public Event selectEvent(int eventId) {
		return sqlSession.getMapper(EventMapper.class).selectEvent(eventId);
	}

	@Override
	public int selectEventCount() {
		return sqlSession.getMapper(EventMapper.class).selectEventCount();
	}

	@Override
	public List<Event> selectEventList(Map<String, Object> map) {
		return sqlSession.getMapper(EventMapper.class).selectEventList(map);
	}
	@Override
	public List<Event> selectEventListByStatus(Map<String, Object> map) {
		return sqlSession.getMapper(EventMapper.class).selectEventListByStatus(map);
	}

}
