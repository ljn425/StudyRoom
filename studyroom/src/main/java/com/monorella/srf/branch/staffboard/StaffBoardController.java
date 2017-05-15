package com.monorella.srf.branch.staffboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.monorella.srf.branch.dto.StaffBoard;
import com.monorella.srf.branch.dto.StaffBoardReply;
@Controller
public class StaffBoardController {
	@Autowired
	private StaffBoardDao staffboardDao;
	
	//공지사항 댓글
	@RequestMapping(value="/staffboard/staffboard_reply", method = RequestMethod.POST)
	public String insertStaffBoardReply(Model model ,StaffBoardReply staffboardreply){
		System.out.println("StaffBoardController->insertStaffBoardReply()" + model + staffboardreply);
			model.addAttribute("staffboardreply", staffboardreply);
		return "staffboard/staffboard_view";
	}
	
	//공지사항 검색
			@RequestMapping(value="/staffboard/staffboard_search" , method = {RequestMethod.POST})
			public String StaffBoardSearch(Model model
					, @RequestParam("so") String so
					, @RequestParam("sv") String sv){
				System.out.println("StaffController->StaffSearch()" + so + sv);
					List<StaffBoard> searchlist = staffboardDao.searchStaffBoard(so, sv);
					System.out.println(searchlist);
				model.addAttribute("searchlist", searchlist);
				model.addAttribute("so", so);
			    model.addAttribute("sv", sv);
				return "staffboard/staffboard_search";
			}
	
	// 공지사항 삭제 폼 요청(비밀번호 입력 폼)
			@RequestMapping(value="/staffboard/staffboard_delete", method = RequestMethod.GET)
			public String StaffBoardDelete(@RequestParam(value="staffboard_no", required=true)int staffboard_no){
				return "staffboard/staffboard_delete";
			}
			// 직원 삭제 요청
			@RequestMapping(value ="/staffboard/staffboard_delete_pro", method = RequestMethod.POST)
			public String StaffBoardDelete(@RequestParam(value="staffboard_no")int staffboard_no
									,@RequestParam(value="staffboard_pw")String staffboard_pw){
				staffboardDao.deleteStaffBoard(staffboard_no, staffboard_pw);
				return "redirect:/staffboard/staffboard_list";
			}
	
	// 공지사항 수정 폼 요청
			@RequestMapping(value="/staffboard/staffboard_modify", method = RequestMethod.GET)
			public String StaffBoardModify(Model model 
									,@RequestParam(value="staffboard_no", required=true)int staffboard_no){
				System.out.println("StaffBoardController->StaffBoardModify->staffboard_no:" + staffboard_no);
				StaffBoard staffboard= staffboardDao.getStaffBoard(staffboard_no);
				model.addAttribute("staffboard", staffboard);
				return "staffboard/staffboard_modify";
			}
			
			// 공지사항 수정 요청
			@RequestMapping(value ="/staffboard/staffboard_modify_pro", method = RequestMethod.POST)
			public String StaffBoardmodify(StaffBoard staffboard){
				System.out.println("StaffBoardController->staffboard()");
				staffboardDao.modifyStaffBoard(staffboard);
				return "redirect:/staffboard/staffboard_view?staffboard_no="+staffboard.getStaffboard_no();
			}
	
	// 공지사항 상세 내용 요청
		@RequestMapping(value="/staffboard/staffboard_view", method = RequestMethod.GET )
		public String StaffBoardView(Model model 
								,@RequestParam(value="staffboard_no")int staffboard_no){
			System.out.println("StaffBoardController ->StaffBoardView()" );
		/*	int totalReply = staffboardDao.totalStaffBoardReply(staffboard_title);*/
			/*List<StaffBoardReply> replylist = staffboardDao.selectStaffBoardReplyList(staffboard_title);*/
			
				
				//셀렉하고
				/*model.addAttribute("replylist", replylist);*/
				//조회
			/*	model.addAttribute("totalReply", totalReply);*/
			
			StaffBoard staffboard = staffboardDao.getStaffBoard(staffboard_no);
			model.addAttribute("staffboard", staffboard);
			return "staffboard/staffboard_view";
		}
		
	// 리스트요청
		@RequestMapping(value = "/staffboard/staffboard_list", method = RequestMethod.GET)
		public String StaffBoardList(Model model 
								, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage){
			System.out.println("StaffBoardController -> StaffBoardList()");
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
			return "staffboard/staffboard_list";
		}
	
	// 입력 폼 요청
		@RequestMapping(value = "/staffboard/staffboard_form", method = RequestMethod.GET)
			public String staffboardForm(){
				System.out.println("StaffBoardController -> staffboard_form요청");
				return "staffboard/staffboard_form";
			}
	
		// 입력(처리)요청
		@RequestMapping(value = "/staffboard/staffboard_pro", method = RequestMethod.POST)
		public String StaffBoardPro(StaffBoard staffboard){
			System.out.println("StaffBoardController-> staffboard()");
			staffboardDao.insertStaffBoard(staffboard);
			return "redirect:/staffboard/staffboard_list";// 글입력후 "/staffboard_list"로 리다이렉트(재요청)
		}
		
}
