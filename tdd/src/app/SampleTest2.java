package app;

import org.junit.Assert;
import org.junit.Test;

public class SampleTest2 {
	
	// 테스트 메소드
	@Test
	public void testPlus() {
		
		Sample s = new Sample();
		
		int result1 = s.plus(1, 2);
		int	result2 = s.plus(-1, -6);
		int	result3 = s.plus(0, 7);
			
		Assert.assertEquals(3, result1);
		Assert.assertEquals(-7, result2);
		Assert.assertEquals(7, result3);
		
	}
	
	@Test
	public void testMin() {
		
		Sample s = new Sample();
		
		int result1 = s.min(5, 2);
		int result2 = s.min(-6, -9);
		
		Assert.assertEquals(3, result1);
		Assert.assertEquals(3, result2);
		
		System.out.println(result1);
		
	}
	
}
