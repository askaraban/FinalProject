package swift.air.service;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import swift.air.dto.Event;

public interface EventService {
	void addEvent(Event event);
	void modifyEvent(Event event);
	void removeEvent(int eventId);
	Event getEvent(int eventId);
	Map<String, Object> getEventList(int pageNum);
	Map<String, Object> getEventListByStatus(int pageNum, int statusId);
	List<Event> getOngoingEvents(LocalDate currentDate);
    List<Event> getEndedEvents(LocalDate currentDate);
    List<Event> getEventMainPage();
}
