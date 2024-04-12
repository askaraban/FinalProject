package swift.air.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.MypageDAO;
import swift.air.dto.Payment;
import swift.air.dto.Point;
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
		pageMap.put("paymentMemberNum", paymentMemberNum);
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		List<Map<String, Object>> futureJourneyList=mypageDAO.selectFutureJourney(pageMap);
		
		 if (futureJourneyList == null || futureJourneyList.isEmpty()) {
			 System.out.println("futureJourneyList에 내용이 없습니다.");
		 }
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("list", futureJourneyList);
		
		return resultMap;
	}

	@Override
	public Map<String, Object> getPastJourney(int paymentMemberNum, int pageNum) {
		//페이징 처리
		int totalSize = mypageDAO.selectPastJourneyCount(paymentMemberNum);
		int pageSize = 5;
		int blockSize = 5;

		Pager pager = new Pager(pageNum, totalSize, pageSize, blockSize);

		// 검색된 지난 일정
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("paymentMemberNum", paymentMemberNum);
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		List<Map<String, Object>> pastJourneyList = mypageDAO.selectPastJourney(pageMap);

		if (pastJourneyList == null || pastJourneyList.isEmpty()) {
			System.out.println("pastJourneyList에 내용이 없습니다.");
		}

		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("list", pastJourneyList);

		return resultMap;
	}

	@Override
	public int getMemberPoint(int memberNum) {
		int memberPoint = mypageDAO.selectMemberPoint(memberNum);
		
		return memberPoint;
	}

	@Override
	public List<Point> getPointDetail(Map<String, Object> map) {
		return mypageDAO.selectPointDetail(map);
	}

	@Override
	public List<Payment> getPaymentList(int paymentMemberNum) {
		return mypageDAO.selectPaymentList(paymentMemberNum);
	}

}
