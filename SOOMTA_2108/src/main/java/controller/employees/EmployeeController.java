package controller.employees;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.EmployeeCommand;
import service.employee.EmployeeDelService;
import service.employee.EmployeeInfoService;
import service.employee.EmployeeJoinService;
import service.employee.EmployeeListService;
import service.employee.EmployeePwUpdateService;
import service.employee.EmployeeUpdateService;

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
	@Autowired
	EmployeeListService employeeListService;
	@RequestMapping("empList")//관리자 리스트 보기
	public String empList(Model model) {
		employeeListService.empList(model);
		return "emp/emp/empList";
	}
	@Autowired
	EmployeeInfoService employeeInfoService;
	@RequestMapping("empInfo")//관리자 상세 보기
	public String empInfo(@RequestParam(value="empId") String empId, Model model) {
		employeeInfoService.empInfo(empId, model);
		return "emp/emp/empInfo";
	}
	@RequestMapping("empMod")//관리자 수정
	public String empMod(@RequestParam(value="empId") String empId, Model model) {
		employeeInfoService.empInfo(empId, model);
		return "emp/emp/empMod";
	}
	@RequestMapping("empPwCon")//pw수정 전 확인
	public String empPwCon(@RequestParam(value="empId") String empId, Model model) {
		employeeInfoService.empInfo(empId,model);
		return "emp/emp/empPwCon";
	}
	//08.22
	@Autowired
	EmployeePwUpdateService employeePwUpdateService;
	@RequestMapping(value="empPwChange", method=RequestMethod.POST)//pw 수정
	public String empPwChange(@RequestParam(value="empPw") String empPw, Model model, HttpSession session) {
		int i = employeePwUpdateService.empPwUpdate(empPw, model, session);
		if(i == 1) {
			return "emp/emp/empPwCon";
		}else {
			return "emp/emp/empPwChange";
		}
	}
	//
	
	
	@Autowired
	EmployeeUpdateService employeeUpdateService;
	@RequestMapping(value="empModOk", method=RequestMethod.POST)//관리자 수정 완료
	public String empModOk(EmployeeCommand employeeCommand) {
		employeeUpdateService.empUpdate(employeeCommand);
		String empId = employeeCommand.getEmpId();
		empId = empId.replace(",", "");
		return "redirect:empInfo?empId="+empId;
		//return "redirect:empInfo";
	}
	@Autowired
	EmployeeDelService employeeDelService;
	@RequestMapping("empDel")//관리자 삭제
	public String empDel(@RequestParam(value="empId") String empId) {
		employeeDelService.empDel(empId);
		return "redirect:empList";
	}
	@RequestMapping("empJoin")//관리자 등록폼
	public String empJoin() {
		return "emp/emp/empJoin";
	}
	@Autowired
	EmployeeJoinService employeeJoinService;
	@RequestMapping(value="empJoinOk", method=RequestMethod.POST)//관리자 등록 완료
	public String empJoinOk(EmployeeCommand employeeCommand//, Model model
			) {
		employeeJoinService.empInsert(employeeCommand);
		return "redirect:empList";
	}
	
	
}
