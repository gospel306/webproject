package com.ssafy.edu.model.dao;

import java.util.List;

import com.ssafy.edu.model.vo.AreaVo;
import com.ssafy.edu.model.vo.ContentTypeVo;
import com.ssafy.edu.model.vo.DetailVo;
import com.ssafy.edu.model.vo.SigunguVo;
import com.ssafy.edu.model.vo.TourInfoVo;


public interface ITourDAO {
	//전체 관광정보 반환(범위?)
	List<TourInfoVo> getTourInfoList();
	//현재위치, 반경에 따른 관광정보 반환+정렬
	List<TourInfoVo> getTourInfoByHere(int mapx,int mapy,int distance);
	//현재위치, 반경에 따른 관광정보 반환(이용가능)+정렬
	List<TourInfoVo> getAvailableTourInfoByHere(int mapx,int mapy,int distance);
	//현재위치, 반경에 따른 관광정보 반환(이용 불가능)+정렬
	List<TourInfoVo> getUnAvailableTourInfoByHere(int mapx,int mapy,int distance);
	//지역에 따른 관광정보 반환
	List<TourInfoVo> getTourInfoByLocation(int areaCode,int sigunguCode);
	List<TourInfoVo> getTourInfoByLocation(int areaCode);
	//Id로? 상세정보 반환
	DetailVo getDetailByCId(int contentId);
	//관광정보 입력
	boolean insertTourInfo(TourInfoVo ti);
	//관광정보 수정
	boolean updateTourInfo(TourInfoVo ti);
	//관광정보 삭제
	boolean deleteTourInfo(int contentId);
	//상세정보 입력
	boolean insertDetail(DetailVo dt);
	//상세정보 수정
	boolean updateDetail(DetailVo dt);
	//상세정보 삭제
	boolean deleteDetail(int contentId);
	//지역 정보 반환
	List<AreaVo> getArea();//시,도
	List<SigunguVo> getSigungu(int areaCode);//시,군,구
	//컨텐츠 타입 반환
	List<ContentTypeVo> getContentType();

}
