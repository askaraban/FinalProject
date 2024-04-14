package swift.air.mapper;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import swift.air.dto.Event;

public interface EventMapper {
	int insertEvent(Event event);
	int updateEvent(Event event);
	int deleteEvent(int eventId);
	Event selectEvent(int eventId);
	int selectEventCount();
	int selectEventCountByStatus(int statusId);
	List<Event> selectEventList(Map<String, Object> map);
	List<Event> selectEventListByStatus(Map<String, Object> map);
    List<Event> selectOngoingEvents(LocalDate currentDate); 
	List<Event> selectEndedEvents(LocalDate currentDate); 
	List<Event> eventMainPage();
}
