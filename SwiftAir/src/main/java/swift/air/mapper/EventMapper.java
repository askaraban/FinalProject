package swift.air.mapper;

import java.util.List;
import java.util.Map;

import swift.air.dto.Event;

public interface EventMapper {
	int insertEvent(Event event);
	int updateEvent(int eventId);
	int deleteEvent(int eventId);
	Event selectEvent(int eventId);
	int selectEventCount();
	List<Event> selectEventList(Map<String, Object> map);
	
}
