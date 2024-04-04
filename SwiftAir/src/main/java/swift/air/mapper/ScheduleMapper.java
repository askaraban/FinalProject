package swift.air.mapper;

import java.util.List;
import java.util.Map;

import swift.air.dto.Schedule;

public interface ScheduleMapper {
	int insertSchedule(Schedule schedule);
	int updateSchedule(int scheduleId);
	int deleteSchedule(int scheduleId);
	Schedule selectSchedule(int scheduleId);
	int selectScheduleCount();
	List<Schedule> selectScheduleList(Map<String, Object> map);
	
}
