package swift.air.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.MypageDAO;
import swift.air.util.Pager;

@Service
@RequiredArgsConstructor
public class MypageServiceImpl implements MypageService {
	private final MypageDAO mypageDAO;
	
	@Override
	public Map<String, Object> getFutureJourney(int paymentMemberNum, int pageNum) {
		//페이징 처리
		int totalSize=mypageDAO.selectFutureJourneyCount(paymentMemberNum);
		int pageSize=5;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalSize, pageSize, blockSize);
		
		//검색된 다가오는 일정
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		Map<String, Object> futureJourneyList=mypageDAO.selectFutureJourney(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("futureJourneyList", futureJourneyList);
		
		return resultMap;
	}

	@Override
	public Map<String, Object> getPastJourney(int paymentMemberNum, int pageNum) {
		return null;
	}

	@Override
	public int getMemberPoint(int memberNum) {
		int memberPoint = mypageDAO.selectMemberPoint(memberNum);
		
		return memberPoint;
	}

}
