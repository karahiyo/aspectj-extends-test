package com.github.karahiyo.aj_extends_pc_test;

public class SubTest extends Test {
	
	private final String sub_x = "XXX";
	private SubTest() {
		super();
		System.out.println("subtest, " + sub_x);
	}
	public SubTest(int value) {
		this();
	}
	public static void main(String[] args) {
		new SubTest(0);
	}
}
