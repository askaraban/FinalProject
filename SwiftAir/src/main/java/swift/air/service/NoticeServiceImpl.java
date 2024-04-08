package swift.air.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.NoticeDAO;
import swift.air.dto.Notice;
import swift.air.util.Pager;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements NoticeService{
	private final NoticeDAO noticeDAO;
	
	@Override
	public void addNotice(Notice notice) {
		noticeDAO.insertNotice(notice);
		
	}
	
	@Override
	public void modifyNotice(Notice notice) {
		noticeDAO.updateNotice(notice);
		
	}
	
	@Override
	public void removeNotice(int noticeId) {
		noticeDAO.deleteNotice(noticeId);
		
	}
	
	@Override
	public Notice getNotice(int noticeId) {
		return noticeDAO.selectNotice(noticeId);
	}
	
	@Override
	public Map<String, Object> getNoticeList(int pageNum) {
		int totalSize=noticeDAO.selectNoticeCount();
		
		Pager pager=new Pager(pageNum, totalSize, 5, 5);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		List<Notice> noticeList=noticeDAO.selectNoticeList(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("pager", pager);
		resultMap.put("noticeList", noticeList);
		
		return resultMap;
	}
	
	
	
}
