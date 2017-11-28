package cn.abble.jblog.server;

import java.util.List;

import org.eclipse.jdt.internal.compiler.lookup.ReductionResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.abble.jblog.mapper.PageMapper;
import cn.abble.jblog.pojo.Page;
import cn.abble.jblog.pojo.PageExample;
import cn.abble.jblog.pojo.diy.PageAndCategory;

@Service
public class APIServer {
	@Autowired
	PageMapper pageMapper;
	
	public long getAllPageNum() {
		return pageMapper.countByExample(null);
	}
	
	public long getPageNum(int cid) {
		PageExample pageExample = new PageExample();
		pageExample.or().andCidEqualTo(cid);
		return pageMapper.countByExample(pageExample);
	}
	
	public List<PageAndCategory> getPage(int offset,int limit){
		return pageMapper.selectLimit(offset, limit);
	}
	
	public List<PageAndCategory> getPageByCid(int cid,int offset,int limit){
		return pageMapper.getPageByCid(cid, offset, limit);
	}
	
}
