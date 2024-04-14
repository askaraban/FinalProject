package swift.air.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import swift.air.dao.ScheduleDAO;
import swift.air.dto.Route;
import swift.air.dto.Schedule;
import swift.air.util.Pager;

@Service
@RequiredArgsConstructor
public class ScheduleServiceImpl implements ScheduleService{
	private final ScheduleDAO scheduleDAO;

	@Override
	public void addSchedule(Schedule schedule) {
//		String routeFlight = schedule.getScheduleFlight(); // 스케줄에서 항공편 정보 가져오기
       //Route route = findRouteByFlight(routeFlight); // 항공편 정보를 기반으로 노선 조회
//        //if (route != null) {
  //          schedule.setScheduleRouteId(route.getRouteId()); // 스케줄에 노선 ID 설정
    //        scheduleDAO.insertSchedule(schedule); // 스케줄 삽입
  //      } else {
            // 항공편에 해당하는 노선이 없을 경우 예외처리 또는 에러 처리를 수행할 수 있습니다.
            // 예를 들어, 사용자에게 메시지를 표시하거나 로깅하는 등의 작업을 수행할 수 있습니다.
    }

	@Override
	public void modifySchedule(Schedule schedule) {
		scheduleDAO.updateSchedule(schedule);
	}
	
	@Override
	public void removeSchedule(int scheduleId) {
		if(scheduleDAO.selectSchedule(scheduleId) == null) {
			throw new RuntimeException("게시글을 찾을 수 없습니다.");
		}
		
		scheduleDAO.deleteSchedule(scheduleId);
	}

	@Override
	public Schedule getSchedule(int scheduleId) {
		return scheduleDAO.selectSchedule(scheduleId);
	}

	@Override
	public Map<String, Object> getScheduleList(int pageNum) {
		int totalSize=scheduleDAO.selectScheduleCount();
		
		Pager pager=new Pager(pageNum, totalSize, 10, 5);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		List<Schedule> scheduleList=scheduleDAO.selectScheduleList(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("scheduleList", scheduleList);
		
		return resultMap;
	}
	
}