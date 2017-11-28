package cn.abble.jblog.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import cn.abble.jblog.pojo.User;
import cn.abble.jblog.server.LoginServer;
import cn.abble.jblog.util.MD5Util;

@Controller
@RequestMapping("/login")
@SessionAttributes("USER")
public class LoginController {
	
	@Autowired
	LoginServer server;
	
	@RequestMapping("/index")
	public String index() {
		return "admin/index";
	}
	
	@RequestMapping(value="/validate",method=RequestMethod.POST)
	public void validate(Model model,String username,String password,HttpServletRequest request,HttpServletResponse response) throws Exception {
		password = MD5Util.toMd5(password);
		User user = new User();
		user.setUusername(username); user.setUpassword(password);
		User result = server.startLogin(user);
		if(result == null) {
			request.setAttribute("errorMessage", "用户名或者密码错误");
			request.getRequestDispatcher("/login/index").forward(request, response);
		}else {
			model.addAttribute("USER", result);
			response.sendRedirect(request.getContextPath()+"/admin/index");
		}
	}
}
