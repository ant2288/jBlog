package cn.abble.jblog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.abble.jblog.pojo.Category;
import cn.abble.jblog.pojo.Webinfo;
import cn.abble.jblog.server.CategoryServer;
import cn.abble.jblog.server.WebInfoServer;

@Controller
public class IndexController {
	@Autowired
	WebInfoServer webInfoServer;
	
	@Autowired
	CategoryServer categoryServer;
	
	@RequestMapping(value={"/","/index"})
	public String index(Model model) {
		Webinfo webinfo = webInfoServer.getWebInfo();
		List<Category> list = categoryServer.getAll();
		model.addAttribute("webinfo", webinfo);
		model.addAttribute("category", list);
		return "Index";
	}
}
