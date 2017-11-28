package cn.abble.jblog.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.abble.jblog.pojo.Page;
import cn.abble.jblog.pojo.Webinfo;
import cn.abble.jblog.server.PageServer;
import cn.abble.jblog.server.WebInfoServer;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	PageServer pageServer;
	@Autowired
	WebInfoServer webInfoServer;
	//个人管理页面
	@RequestMapping("/index")
	public String index(HttpSession session,HttpServletResponse response) throws Exception {
		if(session.getAttribute("USER") == null) {
			response.sendRedirect(session.getServletContext().getContextPath()+"/");
		}
		return "admin/myIndex";
	}
	//打开写文章界面
	@RequestMapping("/write")
	public void write(HttpSession session,HttpServletResponse response) throws Exception{
		if(session.getAttribute("USER") == null) {
			response.sendRedirect(session.getServletContext().getContextPath()+"/");
		}
		response.sendRedirect(session.getServletContext().getContextPath()+"/resources/uedit/index.jsp");
	}
	//保存文章
	@RequestMapping(value="/savePage",produces="application/json;charset=utf-8")
	@ResponseBody
	public String save(HttpServletRequest request,HttpServletResponse response) throws Exception{
		if(request.getSession().getAttribute("USER") == null) {
			response.sendRedirect(request.getContextPath()+"/");
			return "{\"message\":\"无权限\"}";
		}
		String title = request.getParameter("title");
		if(title == null) return "{\"message\":\"标题不能为空\"}";
		String context = request.getParameter("context");
		if(context == null) return "{\"message\":\"内容不能为空\"}";
		String c = request.getParameter("category");
		int cc = 0;
		try {
			cc = Integer.parseInt(c);
		} catch (Exception e) {
			cc =  1;
		}
		Page page = new Page();
		page.setPuser(1);
		page.setCid(cc);
		page.setPtitle(title);page.setPcontext(context);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		page.setPdate(simpleDateFormat.format(new Date()));
		pageServer.savePage(page);
		return "{\"message\":\"保存成功\"}";
	}
	//文章管理
	//0 1 2   3  4  5   6   7    7   
	//5	9 17  33 65 129 257 513  1028
	@RequestMapping("/management")
	public String management(HttpSession session,HttpServletResponse response) throws Exception {
		if(session.getAttribute("USER") == null) {
			response.sendRedirect(session.getServletContext().getContextPath()+"/");
		}
		return "admin/management";
	}
	
	//文章删除
	@RequestMapping(value="/delPage",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	@ResponseBody
	public String del(@RequestParam(defaultValue="9999999")int pid , HttpServletRequest request,HttpServletResponse response) throws Exception{
		if(request.getSession().getAttribute("USER") == null) {
			return "{\"message\":\"无权限\"}";
		}
		int r = pageServer.delPage(pid);
		if(r == 1) {
			return "{\"message\":\"删除成功\"}";
		}else {
			return "{\"message\":\"我也不知道发生了什么\"}";
		}
	}
	@RequestMapping(value = "/setting",produces="application/json;charset=utf-8",method=RequestMethod.GET)
	public String setting(Model model , HttpServletRequest request ,HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("USER") == null) {
			response.sendRedirect(request.getContextPath()+"/");
		}
		Webinfo webinfo = webInfoServer.getWebInfo();
		model.addAttribute("webinfo", webinfo);
		return "admin/setting";
	}
	//网站设置提交数据
	@RequestMapping(value="/setting",produces="application/json;charset=utf-8",method=RequestMethod.POST)
	@ResponseBody
	public String postSetting(HttpServletRequest request) {
		if(request.getSession().getAttribute("USER") == null) {
			return "{\"message\":\"无权限\"}";
		}
		Webinfo webinfo = new Webinfo();
		webinfo.setWid(1);
		webinfo.setWtitle(request.getParameter("title"));
		webinfo.setWfirsttitle(request.getParameter("ft"));
		webinfo.setWsectitle(request.getParameter("st"));
		webinfo.setWkeyword(request.getParameter("kw"));
		webinfo.setWdescribe(request.getParameter("de"));
		int r = webInfoServer.updateWebInfo(webinfo);
		if(r != 1 && r != 0) {
			return "{\"message\":\"未知错误，更新了好多条记录\"}";
		}else if(r == 0) {
			return "{\"message\":\"更新未成功\"}";
		}else {
			return "{\"message\":\"更新成功\"}";
		}
	}
}
