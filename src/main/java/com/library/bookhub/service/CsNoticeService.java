package com.library.bookhub.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.library.bookhub.entity.cs.CsFaqEntity;
import com.library.bookhub.entity.cs.CsNoticeEntity;
import com.library.bookhub.entity.cs.CsQnaEntity;
import com.library.bookhub.repository.cs.CsFaqRepository;
import com.library.bookhub.repository.cs.CsNoticeRepository;
import com.library.bookhub.repository.cs.CsQnaRepository;
import com.library.bookhub.web.dto.cs.CsQnaDto;
import com.library.bookhub.web.dto.cs.PageReq;
import com.library.bookhub.web.dto.cs.PageRes;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class CsNoticeService {

	@Autowired
	private CsNoticeRepository csNoticeRepository;


	// Notice 리스트
	public List<CsNoticeEntity> selectCsNoticeList() {
		return csNoticeRepository.selectCsNoticeList();
	}

    // Notice 상세보기
	public CsNoticeEntity noticeView(int id) {

		return csNoticeRepository.noticeView(id);
	}

	// Notice 페이징 처리 - 총 게시글 수 조회
	public int getTotalNoticeCount() {
		return csNoticeRepository.getAllPgCount();
	}
	
	// Notice 페이징 된 글 목록 조회
	public PageRes<CsNoticeEntity> getNoticeUsingPage(PageReq pageReq) {
		int page = pageReq.getPage();
		int size = pageReq.getSize();
		int offset = (page - 1) * size; // 오프셋 계산
		// 총 데이터 개수 조회
			long totalElements = csNoticeRepository.getAllPgCount();

		// 페이징 처리된 목록 조회
			List<CsNoticeEntity> boardList = csNoticeRepository.findAllwithPasing(offset, size);

		// 페이징 결과 객체 생성
			PageRes<CsNoticeEntity> pageRes = new PageRes<>(boardList ,page, totalElements, size);

			return pageRes;
	}
	
}