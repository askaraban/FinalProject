package swift.air.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Schedule;
import swift.air.mapper.ScheduleMapper;

@Repository
@RequiredArgsConstructor
public class ScheduleDAOImpl implements ScheduleDAO{
	private final SqlSession sqlSession;

	@Override
	public int insertSchedule(Schedule schedule) {
		return sqlSession.getMapper(ScheduleMapper.class).insertSchedule(schedule);
	}

	@Override
	public int updateSchedule(Schedule schedule) {
		return sqlSession.getMapper(ScheduleMapper.class).updateSchedule(schedule);
	}

	@Override
	public int deleteSchedule(int scheduleId) {
		return sqlSession.getMapper(ScheduleMapper.class).deleteSchedule(scheduleId);
	}

	@Override
	public Schedule selectSchedule(int scheduleId) {
		return sqlSession.getMapper(ScheduleMapper.class).selectSchedule(scheduleId);
	}

	@Override
	public int selectScheduleCount() {
		return sqlSession.getMapper(ScheduleMapper.class).selectScheduleCount();
	}

	@Override
	public List<Schedule> selectScheduleList(Map<String, Object> map) {
		return sqlSession.getMapper(ScheduleMapper.class).selectScheduleList(map);
	}

}	