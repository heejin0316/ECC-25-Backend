package com.example.hello_spring.repository;

import com.example.hello_spring.domain.Member;

import java.util.*;

public class MemoryMemberRepository implements MemberRepository {

    private static Map<Long, Member> store = new HashMap<>(); //Map 저장소
    private static long sequence = 0L; //시퀀스는 키값 생성

    @Override
    public Member save(Member member) {
        member.setId(++sequence); //member의 id값 세팅
        store.put(member.getId(), member); //store에 저장
        return member;
    }

    @Override
    public Optional<Member> findById(Long id) {
        return Optional.ofNullable(store.get(id)); //Null도 감쌈
    }

    @Override
    public Optional<Member> findByname(String name) {
        return store.values().stream()
                .filter(member -> member.getName().equals(name))
                .findAny();
    }

    @Override
    public List<Member> findAll() {
        return new ArrayList<>(store.values());
    }

    public void clearStore() {
        store.clear(); //store를 비움
    }
}

