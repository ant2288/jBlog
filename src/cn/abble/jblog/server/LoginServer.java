package cn.abble.jblog.server;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.abble.jblog.mapper.UserMapper;
import cn.abble.jblog.pojo.User;
import cn.abble.jblog.pojo.UserExample;
@Service
public class LoginServer {
	@Autowired
	UserMapper mapper;
	
	public User startLogin(User user) {
		UserExample userExample = new UserExample();
		userExample.or().andUusernameEqualTo(user.getUusername()).andUpasswordEqualTo(user.getUpassword());
		List<User> list = mapper.selectByExample(userExample);
		if(list.size() > 1 || list.size() == 0 || list == null) return null;
		else return list.get(0);
	}
}
