package swift.air.service;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import swift.air.dao.EventDAO;
import swift.air.dto.Event;
import swift.air.util.Pager;

@Service
@RequiredArgsConstructor
public class EventServiceImpl implements EventService{
	private final EventDAO eventDAO;
	
	@Transactional(rollbackFor = Exception.class)
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
	 public Map<String, Object> getEventListByStatus(int pageNum, int statusId) {
        // 현재 날짜를 가져오는 로직
        LocalDate currentDate = LocalDate.now();
        
        // 현재 날짜를 기준으로 이벤트 상태를 판별하여 필터링하는 로직
        List<Event> eventList;
        if (statusId == 0) {
            eventList = eventDAO.selectOngoingEvents(currentDate);
        } else {
            eventList = eventDAO.selectEndedEvents(currentDate);
        }
        
        // 페이징 처리하는 로직
        int totalSize = eventList.size();
        Pager pager = new Pager(pageNum, totalSize, 6, 5);
        int startRow = pager.getStartRow();
        int endRow = pager.getEndRow();
        List<Event> pagedEventList = eventList.subList(startRow, endRow);
        
        // 결과 맵에 페이저 정보와 필터링된 이벤트 목록 추가
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("pager", pager);
        resultMap.put("eventListByStatus", pagedEventList);
        
        return resultMap;
	}
	
	@Override
	public List<Event> getOngoingEvents(LocalDate currentDate) {
		return eventDAO.selectOngoingEvents(currentDate);
	}

	@Override
	public List<Event> getEndedEvents(LocalDate currentDate) {
		return eventDAO.selectEndedEvents(currentDate);
	}

	@Override
	public List<Event> getEventMainPage() {
		
		return eventDAO.eventMainPage();
	}
}

