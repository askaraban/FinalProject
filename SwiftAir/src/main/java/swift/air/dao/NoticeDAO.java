package swift.air.dao;

import java.util.List;
import java.util.Map;

import swift.air.dto.Notice;

public interface NoticeDAO {
	int insertNotice(Notice notice);
	int updateNotice(Notice notice);
	int deleteNotice(int noticeId);
	Notice selectNotice(int noticeId);
	int selectNoticeCount();
	List<Notice> selectNoticeList(Map<String, Object> map);
}
