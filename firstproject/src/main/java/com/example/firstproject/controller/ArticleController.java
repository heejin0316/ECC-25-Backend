package com.example.firstproject.controller;

import com.example.firstproject.entity.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.example.firstproject.dto.ArticleForm; //1.ArticleForm 패키지 자동임포트
import com.example.firstproject.repository.ArticleRepository;

@Controller
public class ArticleController {
    @Autowired //스프링 부트가 미리 생성해 놓은 객체 연결
    private ArticleRepository articleRepository;
    @GetMapping("/articles/new")
    public String newArticleForm() {
        return "articles/new";
    }

    @PostMapping("/articles/create")
    public String createArticle(ArticleForm form) { //1.폼 데이터를 DTO로 받기
        System.out.println(form.toString()); // DTO에 폼 데이터 잘 담겼는지 확인
        //1.DTO를 엔티티로 변환
        Article article = form.toEntity();
        System.out.println(article.toString());
        //2.리파지터리로 엔티티를 DB에 저장
        Article saved = articleRepository.save(article);
        System.out.println(saved.toString());
        return "";
    }
}
