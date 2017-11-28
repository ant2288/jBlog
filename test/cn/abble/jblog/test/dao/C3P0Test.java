package cn.abble.jblog.test.dao;

import javax.sql.DataSource;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.abble.jblog.mapper.PageMapper;
import cn.abble.jblog.mapper.UserMapper;
import cn.abble.jblog.mapper.WebinfoMapper;
import cn.abble.jblog.pojo.Page;
import cn.abble.jblog.pojo.User;
import cn.abble.jblog.pojo.Webinfo;

public class C3P0Test {
	@Test
	public void c3p0Test() {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:spring/spring-core.xml","classpath:spring/spring-dao.xml");
		DataSource dataSource = (DataSource) applicationContext.getBean("dataSource");
		Assert.assertNotNull(dataSource);
	}
	
	@Test
	public void mybatisTest() {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:spring/spring-core.xml","classpath:spring/spring-dao.xml");
		WebinfoMapper webinfoMapper = (WebinfoMapper) applicationContext.getBean("webinfoMapper");
		Webinfo webinfo = webinfoMapper.selectByPrimaryKey(1);
		System.out.println(webinfo.getWtitle());
		Webinfo webinfo1 = webinfoMapper.selectByPrimaryKey(1);
		System.out.println(webinfo1.getWtitle());
	}
	@Test
	public void updateByExample() {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:spring/spring-core.xml","classpath:spring/spring-dao.xml");
		PageMapper pageMapper = (PageMapper)applicationContext.getBean("pageMapper");
		Page page = new Page();
		page.setPid(65);
		page.setPcontext("1234");
		pageMapper.updateByPrimaryKeySelective(page);
	}
}
