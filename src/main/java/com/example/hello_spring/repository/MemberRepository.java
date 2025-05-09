package com.example.hello_spring.repository;

import com.example.hello_spring.domain.Member;

import java.util.List;
import java.util.Optional;

public interface MemberRepository {
    Member save(Member member); //save로 회원 저장
    Optional<Member> findById(Long id); //id로 회원 찾기
    Optional<Member> findByname(String name); //name으로 회원 찾기
    List<Member> findAll(); // 저장된 모든 회원 리스트 반환
}

