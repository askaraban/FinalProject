package swift.air.dao;

import java.util.List;
import java.util.Map;

import swift.air.dto.Schedule;

public interface ScheduleDAO {
	int insertSchedule(Schedule schedule);
	int updateSchedule(Schedule schedule);
	int deleteSchedule(int scheduleId);
	Schedule selectSchedule(int scheduleId);
	Schedule selectScheduleByFlight(String scheduleFlight);
	int selectScheduleCount();
	List<Schedule> selectScheduleList(Map<String, Object> map);
}