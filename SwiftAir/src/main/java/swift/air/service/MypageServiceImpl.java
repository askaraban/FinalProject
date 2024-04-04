package swift.air.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.MypageDAO;

@Service
@RequiredArgsConstructor
public class MypageServiceImpl implements MypageService {
	private final MypageDAO mypageDAO;
	
	@Override
	public Map<String, Object> getFutureJourney(int paymentMemberNum) {
		return null;
	}

	@Override
	public Map<String, Object> getPastJourney(int paymentMemberNum) {
		return null;
	}

	@Override
	public int getMemberPoint(int memberNum) {
		int memberPoint = mypageDAO.selectMemberPoint(memberNum);
		
		return memberPoint;
	}

}
