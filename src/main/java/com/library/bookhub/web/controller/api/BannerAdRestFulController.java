package com.library.bookhub.web.controller.api;

import com.library.bookhub.entity.BannerAd;
import com.library.bookhub.service.BannerAdService;
import com.library.bookhub.web.dto.BannerAdFormDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * 배너 광고 RestFul 컨트롤러
 * @Author : 이준혁
 */
@Slf4j
@RestController
public class BannerAdRestFulController {

    @Autowired
    private BannerAdService bannerAdService;

    // 총 광고수 화면에 뿌리기
    @GetMapping("/totalad")
    public long getTotalAd() {
        return bannerAdService.getTotalAdCount();
    }
    
    
    // 광고여부 상태값 수정
    @PutMapping("/updatepost/{id}")
    public ResponseEntity<?> updatePostStatus(@PathVariable Long id, @RequestBody Map<String, String> requestBody) {
        String postYn = requestBody.get("post_yn");
        bannerAdService.updatePostStatus(id, postYn);
        return ResponseEntity.status(HttpStatus.OK).build();
    }
    
    
    @PostMapping("/click/{id}")
    public void increaseClicks(@PathVariable Long id) {
        bannerAdService.increaseClicks(id);
    }
    
    @GetMapping("/ad-price/{id}")
    public int getBannerAdPrice(@PathVariable int id) {
        return bannerAdService.getBannerAdPriceById(id);
    }
    
    @GetMapping("/getPrice")
    public int getTotalPrice() {
    	return bannerAdService.getTotalPrice();
    }

}
