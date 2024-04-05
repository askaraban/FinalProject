package swift.air.mapper;

import java.util.List;
import java.util.Map;

import swift.air.dto.Notice;

public interface NoticeMapper {
	int insertNotice(Notice notice);
	int updateNotice(int noticeId);
	int deleteNotice(int noticeId);
	Notice selectNotice(int noticeId);
	int selectNoticeCount();
	List<Notice> selectNoticeList(Map<String, Object> map);
}
