
package com.ssafy.edu.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.edu.model.service.ITourService;
import com.ssafy.edu.model.vo.DetailCourse;
import com.ssafy.edu.model.vo.DetailCultural;
import com.ssafy.edu.model.vo.DetailFestival;
import com.ssafy.edu.model.vo.DetailLeports;
import com.ssafy.edu.model.vo.DetailLodgment;
import com.ssafy.edu.model.vo.DetailRestaurant;
import com.ssafy.edu.model.vo.DetailShopping;
import com.ssafy.edu.model.vo.DetailTourPlace;
import com.ssafy.edu.model.vo.DetailVo;

@RestController
public class TourController {
	private static final Logger logger = LoggerFactory.getLogger(TourController.class);
	
	@Autowired
	private ITourService tour_service;

	public void setMem_service(ITourService tour_service) {
		this.tour_service = tour_service;
	}
	//상세정보 불러올때 ContentTypeId값에 따라서 다르게 불러줘야함.
	//12:TourPlace 14:Cultural 15:Festival 25:course 28:leports 32:lodgement 38:shopping 39:restaurant
	
	void temp() {
		int contenttypeid=0;
		int contentId=0;
		DetailVo tmp;
		switch (contenttypeid) {
		case 12:
			tour_service.getDetailTourPlaceByCId(contentId);
			
			break;
		case 14:
			tour_service.getDetailCulturalByCId(contentId);
			
			break;
		case 15:
			tour_service.getDetailFestivalByCId(contentId);
			
			break;
		case 25:
			tour_service.getDetailCourseByCId(contentId);
			break;
		case 28:
			tour_service.getDetailLeportsByCId(contentId);
			break;
		case 32:
			tour_service.getDetailLodgmentByCId(contentId);
			break;
		case 38:
			tour_service.getDetailShoppingByCId(contentId);
			break;
		case 39:
			tour_service.getDetailRestaurantByCId(contentId);
			break;

		default:
			break;
		}
	}

	@RequestMapping(value = "placeDetail.do")
	public ModelAndView placeDetail(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		int contentID = Integer.parseInt(request.getParameter("id"));
		int contentTypeId = Integer.parseInt(request.getParameter("no"));
		
		
		switch (contentTypeId) {
		case 12:
			DetailTourPlace tourPlace = tour_service.getDetailTourPlaceByCId(contentID);
			mv.addObject("detail",tourPlace);
			mv.addObject("typeId",12);
			break;
		case 14:
			DetailCultural culture = tour_service.getDetailCulturalByCId(contentID);
			mv.addObject("detail",culture);
			mv.addObject("typeId",14);
			break;
		case 15:
			DetailFestival festival = tour_service.getDetailFestivalByCId(contentID);
			mv.addObject("detail",festival);
			mv.addObject("typeId",15);
			break;
		case 25:
			DetailCourse course = tour_service.getDetailCourseByCId(contentID);
			mv.addObject("detail",course);
			mv.addObject("typeId",25);
			break;
		case 28:
			DetailLeports leports= tour_service.getDetailLeportsByCId(contentID);
			mv.addObject("detail",leports);
			mv.addObject("typeId",28);
			break;
		case 32:
			DetailLodgment lodgment = tour_service.getDetailLodgmentByCId(contentID);
			mv.addObject("detail",lodgment);
			mv.addObject("typeId",32);
			break;
		case 38:
			DetailShopping shopping = tour_service.getDetailShoppingByCId(contentID);
			mv.addObject("detail",shopping);
			mv.addObject("typeId",38);
			break;
		case 39:
			DetailRestaurant restaurant = tour_service.getDetailRestaurantByCId(contentID);
			mv.addObject("detail",restaurant);
			mv.addObject("typeId",39);
			break;

		default:
			break;
		}
		
		mv.setViewName("place/placeDetail");
		
		return mv;
	}
	
	
}
