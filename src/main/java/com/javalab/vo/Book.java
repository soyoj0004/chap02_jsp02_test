package com.javalab.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


/********************************************************
 * 도서 자바빈스 (도메인 클래스)
 * @author 홍길동
 * 2024.06.11
 * 북정보를 저장하는 자바빈즈 
 * - 롬북 애노테이션으로 간단하게 구현
 * - 자바빈즈의 직렬화시 안전성 확보자원에서 Serializable 구현
********************************************************/


//롬북 애너테이션 - 메타데이터
@NoArgsConstructor 			// 기본생성자
@AllArgsConstructor			// 오버로딩생성자
@Getter						// 게터메소드
@Setter						// 세터메소드
@ToString					// Tostring()메소드


public class Book implements Serializable {/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String title;
	private String author;
	private int publicationYear;

}
