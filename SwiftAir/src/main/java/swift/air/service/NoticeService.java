package swift.air.service;

import java.util.Map;

import swift.air.dto.Notice;

public interface NoticeService {
	void addNotice(Notice notice);
	void modifyNotice(Notice notice);
	void removeNotice(int noticeId);
	Notice getNotice(int noticeId);
	Map<String, Object> getNoticeList(int pageNum);
}
