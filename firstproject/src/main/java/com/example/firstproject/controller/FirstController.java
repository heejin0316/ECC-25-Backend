package com.example.firstproject.controller;

//컨트롤러 선언과 동시에 자동으로 임포트
import org.springframework.stereotype.Controller;
//URL 연결 요청(@GetMapping())과 동시에 자동으로 임포트
import org.springframework.web.bind.annotation.GetMapping;
//Model 클래스 패키지 자동 임포트
import org.springframework.ui.Model;

@Controller  //1.컨트롤러 선언
public class FirstController {

    @GetMapping("/hi") //2.URL 요청 접수
    public String niceToMeetYou(Model model) { //3.메서드 수행, 4.모델 객체 가져오기
        model.addAttribute("username", "희진"); //5.모델변수 등록
        return "greetings"; //6.뷰 템플릿 파일 반환
    }

    @GetMapping("/bye")
    public String seeYouNext(Model model) {
        model.addAttribute("nickname", "정희진");
        return "goodbye";
    }
}
