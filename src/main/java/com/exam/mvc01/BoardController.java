package com.exam.mvc01;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.BoardTO;
import model.CommentTO;
import model.LcategoryTO;
import model.ScategoryTO;
import model.SubjectTO;
import model.ViewSubjectTO;

@Controller
public class BoardController {
	
	@Autowired
	private Mapper mapper;
	
/*
	@RequestMapping("/studyview1.do")
	public String studyview1(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		ArrayList<LcategoryTO> LarrayList = new ArrayList<LcategoryTO>();
		ArrayList<ScategoryTO> SarrayList = new ArrayList<ScategoryTO>();
		
		LarrayList = mapper.study1LC();
		SarrayList = mapper.study1SC();
		
		model.addAttribute("LarrayList",LarrayList);
		model.addAttribute("SarrayList",SarrayList);
		
		
		return "studyview1";
	}
	

	@RequestMapping("/studyview2.do")
	public String studyview2(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		ArrayList<LcategoryTO> LarrayList = new ArrayList<LcategoryTO>();
		ArrayList<ScategoryTO> SarrayList = new ArrayList<ScategoryTO>();
		ArrayList<SubjectTO> SubarrayList = new ArrayList<SubjectTO>();
		
		LarrayList = mapper.study1LC();
		SarrayList = mapper.study1SC();
		SubarrayList = mapper.study2Sub();
		
		
		model.addAttribute("LarrayList",LarrayList);
		model.addAttribute("SarrayList",SarrayList);
		model.addAttribute("SubarrayList",SubarrayList);
		
		return "studyview2";
	}
*/
	
	// 상단의 대분류 네비게이션 바 ( 대분류 안 소분류 포함 )
	@RequestMapping("/studyview11.do")
	public String studyview11(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		ArrayList<LcategoryTO> LarrayList = new ArrayList<LcategoryTO>();
		ArrayList<ScategoryTO> SarrayList = new ArrayList<ScategoryTO>();
		
		LarrayList = mapper.study1LC();
		SarrayList = mapper.study1SC();
		
		model.addAttribute("LarrayList",LarrayList);
		model.addAttribute("SarrayList",SarrayList);
		
		
		return "studyview1-1";
	}


	//상단의 대분류 안 소분류 클릭부터
	@RequestMapping("/studyview21.do")
	public String studyview21(HttpServletRequest request, HttpServletResponse response, Model model) {
		//대분류 , 소분류 , 제목을 담을 ArrayList
		ArrayList<LcategoryTO> LarrayList = new ArrayList<LcategoryTO>();
		ArrayList<ScategoryTO> SarrayList = new ArrayList<ScategoryTO>();
		ArrayList<SubjectTO> SubarrayList = new ArrayList<SubjectTO>();
		//왼쪽 라인의 제목을 클릭했을때 그에 대한 제목의 내용 ( 동영상, 내용 ) 을 담을 ArrayList
		ArrayList<ViewSubjectTO> ViewSubarrayList = new ArrayList<ViewSubjectTO>();
		//왼쪽 라인의 제목을 클릭했을때 작성된 댓글들 (이름, 내용, 날짜)을 담을 ArrayList
		ArrayList<CommentTO> CommentViewarrayList = new ArrayList<CommentTO>();
		
		
		LarrayList = mapper.study1LC();
		SarrayList = mapper.study1SC();
		SubarrayList = mapper.study2Sub();
		//대분류 소분류 제목들
		
		model.addAttribute("LarrayList",LarrayList);
		model.addAttribute("SarrayList",SarrayList);
		model.addAttribute("SubarrayList",SubarrayList);
		
		//studyview2-1에서 subject 테이블의 seq(viewseq) 를 받을때만(왼쪽 상단의 제목을 눌렀을때) 그 제목에 대한 내용(동영상, 내용)이 나오게 하는 곳
		//studyview2-1에서 subject 테이블의 seq(viewseq) 를 받을때만(왼쪽 상단의 제목을 눌렀을때) 그 제목에 대한 댓글(작성자, 내용, 날짜)이 나오게 하는 곳
		if(request.getParameter("viewseq")!=null)	{
			String seq = (String)request.getParameter("viewseq");
			
			ViewSubarrayList = mapper.study2ViewSub(seq);
			model.addAttribute("ViewSubarrayList", ViewSubarrayList);
			
			/*
			CommentTO cto = new CommentTO();
			cto.setCseq(Integer.parseInt(seq));
			System.out.println("GGGGGGGGGGGGG : " + request.getParameter("viewseq"));
			System.out.println("GGGGGGGGGGGGG : " + seq);
			
			CommentViewarrayList = mapper.commentView(cto);
			model.addAttribute("CommentViewarrayList)",CommentViewarrayList);
			*/
			
			CommentViewarrayList = mapper.commentView(seq);
			model.addAttribute("CommentViewarrayList",CommentViewarrayList);

		}
		
		//
		int CommentFlag = 0;
		String CommentOk = (String)request.getParameter("CommentOk");
		
		if(request.getParameter("writer") != null)	{

			String writer = request.getParameter("writer");
			String password = request.getParameter("password");
			String content = request.getParameter("content");
			String cseq1 = request.getParameter("subseq");
			int cseq =Integer.parseInt(cseq1);
			CommentTO cto = new CommentTO();
			cto.setContent(content);
			cto.setWriter(writer);
			cto.setPassword(password);
			cto.setCseq(cseq);
			
			CommentFlag = mapper.insertComment(cto);
			CommentOk = "0";
			
			model.addAttribute("CommentFlag",CommentFlag);
			model.addAttribute("CommentOk",CommentOk);
		}
		
		return "studyview2-1";
	}
	
	
	
	
	
	@RequestMapping("insertComment.do")
	public String comment(HttpServletRequest request, HttpServletResponse response, Model model) {

		
		
		return "studyview2-1";
	}
	
	@RequestMapping("write_ok.do")
	public String writeOk(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		return "board_write_ok";
	}
	
	@RequestMapping("view.do")
	public String view(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		return "board_view";
	}
	
	@RequestMapping("modify.do")
	public String modify(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		return "board_modify";
	}
	
	@RequestMapping("modify_ok.do")
	public String modifyOk(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		return "board_modify_ok";
	}
	
	@RequestMapping("delete.do")
	public String delete(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		return "board_delete";
	}
	
	@RequestMapping("delete_ok.do")
	public String deleteOk(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		return "board_delete_ok";
	}
	
}
