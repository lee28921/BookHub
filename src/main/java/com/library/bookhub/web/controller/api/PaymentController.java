
package com.library.bookhub.web.controller.api;

import com.library.bookhub.entity.User;
import com.library.bookhub.entity.UserPoint;
import com.library.bookhub.service.PayService;
import com.library.bookhub.service.UserService;
import com.library.bookhub.web.dto.CancelRequest;

import lombok.extern.slf4j.Slf4j;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.Map;
import java.util.Optional;

/**
 * 결제 컨트롤러
 * 
 * @Author : 이준혁
 */
@RestController
@RequestMapping("/payment")
@Slf4j
public class PaymentController {

	@Autowired
	private PayService payService;

	@GetMapping("/token")
	public ResponseEntity<String> getToken() {
		
		
		return payService.getToken();
	}
	
	
	
	  @PostMapping("/cancel-payment")
	    public ResponseEntity<String> cancelPayment(@RequestBody UserPoint userPoint, @RequestHeader("Authorization") String accessToken) {
	        // 컨트롤러에서 accessToken을 받아서 해당 메서드에 전달합니다.
	        return payService.cancelPayment(userPoint, accessToken);
	    }



	
}
