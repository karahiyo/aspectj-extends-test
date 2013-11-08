package com.github.karahiyo.aj_extends_pc_test;

public aspect Logger {
	
	/**
	 * advice defined in com.github.karahiyo.aj_extends_pc_test.Logger has not been applied 
 [Xlint:adviceDidNotMatch]
	 */
	before(): call(Test+.new()) { 
		System.out.println("B call: " + thisJoinPoint);
	}
	
	/**
	 * advice defined in com.github.karahiyo.aj_extends_pc_test.Logger has not been applied 
 [Xlint:adviceDidNotMatch]
	 */
	after(): call(Test+.new()) { 
		System.out.println("A call: " + thisJoinPoint);
	}

	before(): execution(Test+.new()) { 
		System.out.println("B new: " + thisJoinPoint);
	}
	
	after(): execution(* **.*(..)) { 
		System.out.println("A new: " + thisJoinPoint);
	}
	
	before(): initialization(Test+.new()) { 
		System.out.println("B init: " + thisJoinPoint);
	}
	
	after(): execution(* **.*(..)) { 
		System.out.println("A init: " + thisJoinPoint);
	}
}
