package swift.air.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.EventDAO;
import swift.air.dto.Event;
import swift.air.util.Pager;

@Service
@RequiredArgsConstructor
public class EventServiceImpl implements EventService{
	private final EventDAO eventDAO;
	
	@Override
	public void addEvent(Event event) {
		eventDAO.insertEvent(event);
		
	}

	@Override
	public void modifyEvent(Event event) {
		eventDAO.updateEvent(event);
		
	}

	@Override
	public void removeEvent(int eventId) {
		eventDAO.deleteEvent(eventId);
		
	}

	@Override
	public Event getEvent(int eventId) {
		return eventDAO.selectEvent(eventId);
	}

	@Override
	public Map<String, Object> getEventList(int pageNum) {
		int totalSize=eventDAO.selectEventCount();
		
		Pager pager=new Pager(pageNum, totalSize, 6, 5);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		List<Event> eventList=eventDAO.selectEventList(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("eventList", eventList);
		
		return resultMap;
	}

	@Override
	public Map<String, Object> getEventListByStatus(int pageNum) {
		int totalSize=eventDAO.selectEventCount();
		
		Pager pager=new Pager(pageNum, totalSize, 6, 5);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		List<Event> eventListByStatus=eventDAO.selectEventListByStatus(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("eventListByStatus", eventListByStatus);
		
		return resultMap;
	}
}
