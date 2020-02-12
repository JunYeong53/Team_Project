package websocket;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

import logic.User;

public class MyHandshakeInterceptor extends HttpSessionHandshakeInterceptor {
	@Override
    public boolean beforeHandshake(ServerHttpRequest request,ServerHttpResponse response, WebSocketHandler wsHandler, Map<String, Object> attributes) throws Exception{
		// 위의 파라미터 중, attributes 에 값을 저장하면 웹소켓 핸들러 클래스의 WebSocketSession에 전달된다
        System.out.println("Before Handshake");
        ServletServerHttpRequest ssreq = (ServletServerHttpRequest)request;
        System.out.println("URI:"+request.getURI());
        HttpServletRequest req = ssreq.getServletRequest();
        User user = (User)req.getSession().getAttribute("loginUser");
        int chatnum = Integer.parseInt(req.getParameter("chatnum"));
        System.out.println("chatnum : " + chatnum);
        String id = user.getId();
        attributes.put("sender", user);
        attributes.put("chatnum", chatnum);
        System.out.println("HttpSession에 저장된 ID : " + id);
		return super.beforeHandshake(request, response, wsHandler, attributes);
	}
	
	@Override
    public void afterHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler, Exception ex) {
        System.out.println("After Handshake");
 
        super.afterHandshake(request, response, wsHandler, ex);
    }
}
