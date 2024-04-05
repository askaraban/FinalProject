package swift.air.service;

import java.util.Map;

import swift.air.dto.Event;

public interface EventService {
	void addEvent(Event event);
	void modifyEvent(Event event);
	void removeEvent(int eventId);
	Event getEvent(int eventId);
	Map<String, Object> getEventList(int pageNum);
	Map<String, Object> getEventListByStatus(int pageNum);
}
