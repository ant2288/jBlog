package cn.abble.jblog.server;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.abble.jblog.mapper.WebinfoMapper;
import cn.abble.jblog.pojo.Webinfo;


@Service
public class WebInfoServer {
	@Autowired
	WebinfoMapper mapper;
	public Webinfo getWebInfo() {
		Webinfo webinfo = mapper.selectByPrimaryKey(1);
		return webinfo;
	}
	
	public int updateWebInfo(Webinfo webinfo) {
		return mapper.updateByPrimaryKey(webinfo);
	}
}
