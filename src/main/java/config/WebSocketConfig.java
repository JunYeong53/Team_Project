package config;

import java.util.Map;

import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Signature;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;
import org.springframework.web.socket.server.HandshakeInterceptor;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

import websocket.EchoHandler;
import websocket.MyHandshakeInterceptor;

@Configuration
@EnableWebSocket 
public class WebSocketConfig implements WebSocketConfigurer{
	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		registry.addHandler(new EchoHandler(), "chatting.shop").addInterceptors(new MyHandshakeInterceptor()).setAllowedOrigins("*");
	}
}
