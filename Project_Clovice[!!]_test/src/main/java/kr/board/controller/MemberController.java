package kr.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.board.entity.Favorite;
import kr.board.entity.Log;
import kr.board.entity.Member;
import kr.board.mapper.LogMapper;
import kr.board.mapper.MemberMapper;

@Controller
public class MemberController {
	@Autowired
	MemberMapper memberMapper;
	
	@Autowired
	LogMapper logMapper;

	@RequestMapping("/memJoin.do")
	public String memJoin() {
		
		return "member/join1";
	}
	
	@RequestMapping("/memRegisterCheck.do")
	public @ResponseBody int memRegisterCheck(@RequestParam("mem_id")String mem_id) {
		Member m = memberMapper.registerCheck(mem_id);
		if(m!=null || mem_id.equals("")) {
			return 0; // 사용불가한 아이디
		}
		return 1; // 사용가능한 아이디
	}
	
	//회원가입 처리
	@RequestMapping("memRegister.do")
	public String memRegister(Member m,String memPassword1,String memPassword2,
			RedirectAttributes rttr,HttpSession session) {
		System.out.println(m);
		if(m.getMem_id()==null || m.getMem_id().equals("")|| 
				memPassword1==null || memPassword1.equals("")||
				memPassword2==null || memPassword2.equals("")||
				m.getMem_name()==null || m.getMem_name().equals("")||
				m.getMem_birth()==0 ||
				m.getMem_gender()==null || m.getMem_gender().equals("")||
				m.getMem_email()==null || m.getMem_email().equals("")) {
				// 누락메세지 가지고 가기? => 객체바인딩(Model,HttpServletRequest,HttpSession)
				
				rttr.addFlashAttribute("msgType","실패 메시지");
				rttr.addFlashAttribute("msg","모든 내용을 입력하세요");
				return "redirect:/memJoin1.do";
		}
		if(!memPassword1.equals(memPassword2)) {
			rttr.addFlashAttribute("msgType","실패 메시지");
			rttr.addFlashAttribute("msg","비밀번호가 서로 다릅니다.");
			return "redirect:/memJoin1.do";
		}
		// 회원을 테이블에 저장하기
		int result = memberMapper.register(m);
		if(result == 1) { // 회원가입 성공 메시지
			rttr.addFlashAttribute("msgType","성공 메시지");
			rttr.addFlashAttribute("msg","회원가입에 성공했습니다.");
//			session.setAttribute("mvo",m); // $(!empty m) 회원가입 성공여부
			// 회원가입이 성공하면 -> 로그인 처리하기
			return "redirect:/";
		}else {
			rttr.addFlashAttribute("msgType","실패 메시지");
			rttr.addFlashAttribute("msg","이미 존재하는 회원입니다.");
			return "redirect:/memJoin1.do";
		}
		
	}
	
	//로그아웃 처리
	@RequestMapping("/memLogout.do")
	public String memLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/memLoginForm.do")
	public String memLoginForm() {
		
		return "member/memLoginForm1"; // memLoginForm.jsp
	}
	
	// 로그인 기능 구현
	@RequestMapping("/memLogin.do")
	public String memLogin(Member m,RedirectAttributes rttr,
			HttpSession session,Log log) {
		if(m.getMem_id()==null || m.getMem_id().equals("")||
		   m.getMem_pw()==null || m.getMem_pw().equals("")) {
			rttr.addFlashAttribute("msgType","실패 메시지");
			rttr.addFlashAttribute("msg","아이디,비밀번호를 다시 확인하세요.");
			return "redirect:/memLoginForm.do";
		}
		Member mvo = memberMapper.memLogin(m);
		if(mvo!=null) { // 로그인 성공
			rttr.addFlashAttribute("msgType","성공 메시지");
			rttr.addFlashAttribute("msg","로그인에 성공했습니다.");
			session.setAttribute("mvo", mvo); // ${!empty mvo}
			int cnt = logMapper.logCount(mvo.getMem_id()); 
			if (cnt == 1) {
				return "redirect:/";
			}else {
				return "redirect:/memLoginForm.do";
			}
		}else { // 로그인 실패
			rttr.addFlashAttribute("msgType","실패 메시지");
			rttr.addFlashAttribute("msg","아이디,비밀번호를 확인해주세요.");
			return "redirect:/memLoginForm.do";
		}
		
	}
	
	// 회원정보수정화면
	
	@RequestMapping("/memUpdateForm.do")
	public String memUpdateForm() {
		
		return "member/memUpdateForm1";
	}
	
	@RequestMapping("/memUpdate.do")
	public String memUpdate(Member m, RedirectAttributes rttr,
							String memPassword1,String memPassword2,
							HttpSession session) {
		
		if(m.getMem_id()==null || m.getMem_id().equals("")|| 
				memPassword1==null || memPassword1.equals("")||
				memPassword2==null || memPassword2.equals("")||
				m.getMem_name()==null || m.getMem_name().equals("")||
				m.getMem_birth()==0 ||
				m.getMem_gender()==null || m.getMem_gender().equals("")||
				m.getMem_email()==null || m.getMem_email().equals("")) {
				// 누락메세지 가지고 가기? => 객체바인딩(Model,HttpServletRequest,HttpSession)
				
				rttr.addFlashAttribute("msgType","실패 메시지");
				rttr.addFlashAttribute("msg","모든 내용을 입력하세요");
				return "redirect:/memUpdateForm.do";
		}
		if(!memPassword1.equals(memPassword2)) {
			rttr.addFlashAttribute("msgType","실패 메시지");
			rttr.addFlashAttribute("msg","비밀번호가 서로 다릅니다.");
			return "redirect:/memUpdateForm.do";
		}
		// 회원을 수정저장하기
		int result = memberMapper.memUpdate(m);
		if(result == 1) { // 수정 성공 메시지
			rttr.addFlashAttribute("msgType","성공 메시지");
			rttr.addFlashAttribute("msg","회원정보 수정에 성공했습니다.");
			session.setAttribute("mvo",m); // $(!empty m)
			// 회원수정이 성공하면 -> 로그인 처리하기
			return "redirect:/";
		}else {
			rttr.addFlashAttribute("msgType","실패 메시지");
			rttr.addFlashAttribute("msg","회원정보 수정에 실패했습니다.");
			return "redirect:/memUpdateForm.do";
		}
		
	}
	
	@RequestMapping("/getFeature.do")
	public String getFeature() {
		
		return "member/getFeature";
	}
	
	@RequestMapping("/insertFeature.do")
	public void insertFeature(Favorite fvr) {
		System.out.println(fvr);
	  int result = memberMapper.insertFeature(fvr);
		if(result == 1) { // 회원가입 성공 메시지
			//rttr.addFlashAttribute("msgType","성공 메시지");
			//rttr.addFlashAttribute("msg","회원가입에 성공했습니다.");
			// 회원가입이 성공하면 -> 로그인 처리하기
		
	}
	
}
	
	@RequestMapping("myPage.do")
	public String myPage() {
		
		return "member/myPage";
	}
	

}