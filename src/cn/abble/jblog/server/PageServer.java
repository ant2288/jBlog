package cn.abble.jblog.server;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.abble.jblog.mapper.PageMapper;
import cn.abble.jblog.pojo.Page;

@Service
public class PageServer {
	@Autowired
	PageMapper mapper;
	
	public void savePage(Page page) {
		mapper.insert(page);
	}
	
	public int delPage(int pid) {
		return mapper.deleteByPrimaryKey(pid);
	}
}
