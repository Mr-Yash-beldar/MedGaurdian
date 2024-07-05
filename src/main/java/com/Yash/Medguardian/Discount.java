package com.Yash.Medguardian;

public class Discount {
	public static int calculateDiscountPrice(int percentage, int originalPrice) {
        double discountAmount = (percentage / 100.0) * originalPrice;
        double discountedPrice = originalPrice - discountAmount;
        return (int) discountedPrice;
    }
}
