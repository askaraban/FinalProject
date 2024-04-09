package swift.air.service;

import java.util.Map;

import swift.air.dto.Schedule;


public interface ScheduleService {
	void addSchedule(Schedule schedule);
	void modifySchedule(Schedule schedule);
	void removeSchedule(int scheduleId);
	Schedule getSchedule(int scheduleId);
	Map<String, Object> getScheduleList(int pageNum);
}
