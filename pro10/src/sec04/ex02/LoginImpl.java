package sec04.ex02;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class LoginImpl implements HttpSessionBindingListener {
	String user_id;
	String user_pw;
	static int total_user=0;
	
	public LoginImpl() {
		
	}
	
	public LoginImpl(String user_id,String user_pw) {
		this.user_id=user_id;
		this.user_pw=user_pw;
	}
	
	// 구현객체가 세션에 바인딩 될 때 호출
	@Override
	public void valueBound(HttpSessionBindingEvent arg0) {
		System.out.println("세션 생성");
		++total_user;
		
	}
	
	// 구현객체가 세션에 언바인딩(제거) 될 때 호출
	@Override
	public void valueUnbound(HttpSessionBindingEvent arg0) {
		System.out.println("세션 소멸");
		total_user--;
	}

}
