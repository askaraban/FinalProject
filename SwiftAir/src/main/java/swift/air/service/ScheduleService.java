package swift.air.service;

import java.util.Map;

import swift.air.dto.Schedule;


public interface ScheduleService {
	void addSchedule(Schedule schedule);
	void modifySchedule(Schedule schedule);
	void removeSchedule(String scheduleId);
	Schedule getSchedule(String scheduleId);
	Map<String, Object> getScheduleList(int pageNum);
}