package test;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.coderhome.model.SysUser;
import com.coderhome.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
// 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath:spring-mybatis.xml" })
public class TestMyBatis {
	private static Logger logger = Logger.getLogger(TestMyBatis.class);
	@Resource
	private UserService userService = null;

	@Test
	public void test() {
		SysUser user = userService.getUserById(1);
		logger.info(JSON.toJSONString(user));
		System.out.println(JSON.toJSONString(user));
		System.out.println(">>>>>>>>>>>>>>>>>>>>>");
		
		SysUser userInfo = new SysUser();
		userInfo.setLoginname("darren");
		int a = userService.insert(userInfo);
		System.out.println(a);
	}
}
