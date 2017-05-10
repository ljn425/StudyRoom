package com.monorella.srf.branch.staffboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.StaffBoard;
@Controller
public class StaffBoardController {
	@Autowired
	private StaffBoardDao staffboardDao;
	
	// 리스트요청
		@RequestMapping(value = "/staffboard/staffBoard_list", method = RequestMethod.GET)
		public String staffBoardList(Model model 
								, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage){
			System.out.println("StaffBoardController -> staffboardlist()");
			int staffboardCount = staffboardDao.getStaffBoardCount();
			int pagePerRow = 10;
			int lastPage = (int)(Math.ceil(staffboardCount / pagePerRow));
			/*반올림 : Math.round()
			올림 : Math.ceil()
			내림 : Math.floor()*/
			List<StaffBoard> list = staffboardDao.getStaffBoardList(currentPage, pagePerRow);
			  
		    //페이지를 10씩 끊어서 
		    int countPage = 10;
		    //시작 페이지 구하기 
		    int startPage = ((currentPage-1)/10)*10+1;
		    //끝 페이지 구하기 
		    int endPage = startPage + countPage-1;
		    //다음 페이지 구하기 
		    int nextPage = ((currentPage-1)/10)*10+11;
		    //이전페이지 구하기 
		    int previousPage =((currentPage-1)/10)*10-10+1;
		    
		    //이전 페이지가 0보다 같거나 작을경우
		    if(previousPage <=0){
		    	previousPage = 1; 	
		    }
		    //끝 페이자가 총 페이지보다 클 경우
		    if(endPage > lastPage){
		    	endPage = lastPage;
		    }
		    //다음 페이지가 총 페이지보다 큰 경우 
		    if(nextPage > lastPage){
		    	nextPage = lastPage;
		    }
			model.addAttribute("startPage", startPage);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("staffboardCount", staffboardCount);
			model.addAttribute("lastPage", lastPage);
			model.addAttribute("list", list);
			model.addAttribute("endPage", endPage);
			model.addAttribute("nextPage", nextPage);
			model.addAttribute("previousPage", previousPage);
			return "staffboard/staffBoard_list";
		}
	
	// 입력 폼 요청
		@RequestMapping(value = "/staffboard/staffboard_form", method = RequestMethod.GET)
			public String staffboardform(){
				System.out.println("StaffBoardController -> staffboard_form요청");
				return "staffboard/staffboard_form";
			}
	
		// 입력(처리)요청
		@RequestMapping(value = "/staffboard/staffboard_pro", method = RequestMethod.POST)
		public String staffboardpro(StaffBoard staffboard){
			System.out.println("StaffBoardController-> staffboard()");
			staffboardDao.insertStaffBoard(staffboard);
			return "redirect:/staffboard/staffBoard_list";// 글입력후 "/staffboard_list"로 리다이렉트(재요청)
		}
		
}
