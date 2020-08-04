
package com.ssafy.edu.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.edu.model.service.ITourService;
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


	
	
}
