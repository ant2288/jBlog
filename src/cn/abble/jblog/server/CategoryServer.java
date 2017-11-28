package cn.abble.jblog.server;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.abble.jblog.mapper.CategoryMapper;
import cn.abble.jblog.pojo.Category;

@Service
public class CategoryServer {
	@Autowired
	CategoryMapper categoryMapper;
	
	public List<Category> getAll(){
		return categoryMapper.selectByExample(null);
	}
}
