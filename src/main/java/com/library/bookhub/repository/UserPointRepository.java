package com.library.bookhub.repository;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.library.bookhub.entity.User;
import com.library.bookhub.entity.UserPoint;


/**
 * 유저 포인트 레파지토리
 * @Author : 이준혁
 */
@Mapper
public interface UserPointRepository {

	// 저장함수
	public void save(UserPoint userPoint);

	// 수정함수
	public int update(UserPoint userPoint);

	public int refundUpdate(UserPoint userPoint);

	// 삭제함수
	public int deleteById(int id);

	// 기본키(id)가 있는지 확인하는 조회함수
	public long existById(int id);

	// 유저 가져오기
	public User getUser(String username);

	// 상세조회(1건조회)
	public Optional<UserPoint> findById(int id);

	public List<UserPoint> findByUserId(String userId);

	// 전체조회, 페이징처리
	public List<UserPoint> findAllUserPointPaging(@Param("offset") int offset, @Param("limit") int limit,
			@Param("userId") String userId);

	// 총 데이터의 개수 조회
	public int getTotalCount();

	// 환불 요청된 데이터 조회
	public List<UserPoint> refundReq();

	// 포트원 ImpUid 가져오기
	public UserPoint findByImpUid(String impUid);
	
	// 총 거래액 가져오기
	public long findByPrice();
	
}