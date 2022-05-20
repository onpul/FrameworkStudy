/*====================================
	CalculatorAfterThrowing.java
	- After Throwing Advice 구성
====================================*/

package com.test.spr;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.aop.ThrowsAdvice;

public class CalculatorAfterThrowing implements ThrowsAdvice
{
	// 재정의 해야 할 메소드 없음. 예외가 어떻게 발생할지 모르기 때문.
	// 인터페이스를 구현하는 것만으로도 예외 발생했을 때 기능하게끔... 명시적 구현
	
	public void afterThrowing(IllegalArgumentException e) throws Throwable
	{
		Log log = LogFactory.getLog(this.getClass());
		log.info("After Throwing Advice 수행 ---------------------------");
		log.info("주 업무 실행 과정에서 예외 발생 시 처리되는 사후 업무");
		log.info(e.toString());
		log.info("--------------------------- After Throwing Advice 수행");
	}
}
