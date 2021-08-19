package controller.employees;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.EmployeeCommand;

@Controller
@RequestMapping("emp")
public class EmployeeController {

	@RequestMapping("main")
	public String empPage() {
		return "emp/empmain";
	}
	@RequestMapping("boardList")//게시글 보기
	public String boardList() {
		return "emp/board/boardList";
	}
	@RequestMapping("boardInfo")//게시글 상세 보기
	public String boardInfo() {
		return "emp/board/boardInfo";
	}
	@RequestMapping("boardMod")//게시판 수정
	public String boardMod() {
		return "emp/board/boardMod";
	}
	@RequestMapping("boardModOk")//게시판 수정 완료
	public String boardModOk() {
		return "redirect:boardInfo";
	}
	@RequestMapping("boardDel")//게시판 삭제
	public String boardDel() {
		return "redirect:boardList";
	}
	
	@RequestMapping("boardWrite")//게시글 작성
	public String boardWrite() {
		return "emp/board/boardWrite";
	}
	
	@RequestMapping("memList")//일반 회원 보기
	public String memList() {
		return "emp/mem/memList";
	}
	@RequestMapping("memInfo")//일반 회원 상세 보기
	public String memInfo() {
		return "emp/mem/memInfo";
	}
	@RequestMapping("memMod")//회원 수정
	public String memMod() {
		return "emp/mem/memMod";
	}
	@RequestMapping("memModOk")//회원 수정 완료
	public String memModOk() {
		return "redirect:memInfo";
	}
	@RequestMapping("memDel")//회원 탈퇴
	public String memDel(){
		return "redirect:memList";
	}
	@RequestMapping("tutorList")//튜터 회원보기
	public String tutorList() {
		return "emp/tutor/tutorList";
	}
	@RequestMapping("tutorInfo")//튜터 상세 보기
	public String tutorInfo() {
		return "emp/tutor/tutorInfo";
	}
	@RequestMapping("tutorMod")//튜터 수정
	public String tutorMod() {
		return "emp/tutor/tutorMod";
	}
	@RequestMapping("tutorModOk")//튜터 수정 완료
	public String tutorModOk() {
		return "redirect:tutorInfo";
	}
	@RequestMapping("tutorDel")//튜터 탈퇴
	public String tutorDel(){
		return "redirect:tutorList";
	}
	@RequestMapping("empList")//관리자 보기
	public String empList() {
		return "emp/emp/empList";
	}
	@RequestMapping("empInfo")//관리자 상세 보기
	public String empInfo() {
		return "emp/emp/empInfo";
	}
	@RequestMapping("empMod")//관리자 수정
	public String empMod() {
		return "emp/emp/empMod";
	}
	@RequestMapping("empModOk")//관리자 수정 완료
	public String empModOk() {
		return "redirect:empInfo";
	}
	@RequestMapping("empDel")//관리자 삭제
	public String empDel() {
		return "redirect:empList";
	}
	@RequestMapping("empJoin")//관리자 등록
	public String empJoin() {
		return "emp/emp/empJoin";
	}
	@RequestMapping(value="empJoinOk", method=RequestMethod.POST)//관리자 등록 완료
	public String empJoinOk(EmployeeCommand empCom, Model model) {
		return "redirect:empList";//나중에 주소 변경하기
	}
	
	
}
