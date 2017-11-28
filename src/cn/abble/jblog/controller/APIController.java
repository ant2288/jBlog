package cn.abble.jblog.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;

import cn.abble.jblog.pojo.Category;
import cn.abble.jblog.pojo.diy.PageAndCategory;
import cn.abble.jblog.server.APIServer;
import cn.abble.jblog.server.CategoryServer;
import cn.abble.jblog.pojo.Page;

@RestController
@RequestMapping("/api")
public class APIController {
	
	@Autowired
	APIServer apiServer;
	@Autowired
	CategoryServer categoryServer;
	
	@RequestMapping("/getAllPageNum")
	public String getAllPageNum(@RequestParam(defaultValue="5")int limit) throws Exception {
		long num = apiServer.getAllPageNum();
		cn.abble.jblog.util.Page page = new cn.abble.jblog.util.Page((int)num, limit, 1);
		ObjectMapper objectMapper = new ObjectMapper();
		return objectMapper.writeValueAsString(page);
	}
	
	@RequestMapping(value = "/getPage",produces="application/json;charset=utf-8")
	public String getPage(@RequestParam(defaultValue="0")int offset,
			@RequestParam(defaultValue="5") int limit) throws Exception{		
		List<PageAndCategory> list = apiServer.getPage(offset, limit);
		ObjectMapper objectMapper = new ObjectMapper();
		return objectMapper.writeValueAsString(list);
	}
	
	//获取所有分类信息
	@RequestMapping(value="/getCategory",produces="application/json;charset=utf-8")
	public String getCategory() throws Exception{
		List<Category> list = categoryServer.getAll();
		ObjectMapper objectMapper = new ObjectMapper();
		return objectMapper.writeValueAsString(list);
	}
	
	//根据分类信息获取文章
	@RequestMapping(value="/getPageByCid",produces="application/json;charset=utf-8")
	public String getPageByCid(@RequestParam(defaultValue="1")int cid,
							   @RequestParam(defaultValue="0")int offset,
							   @RequestParam(defaultValue="5")int limit) throws Exception{
		ObjectMapper objectMapper = new ObjectMapper();
		List<PageAndCategory> list = apiServer.getPageByCid(cid, offset, limit);
		return objectMapper.writeValueAsString(list);
	}
	
	//获取相关分类的总页数（导航的总页数）
	@RequestMapping(value="/getCategroyPageNum",produces="application/json;charset=utf-8")
	public String getCategroyPageNum(@RequestParam(defaultValue="1") int cid) throws Exception{
		long num = apiServer.getPageNum(cid);
		cn.abble.jblog.util.Page page = new cn.abble.jblog.util.Page((int)num, 5, 1);
		return new ObjectMapper().writeValueAsString(page);
	}
}
