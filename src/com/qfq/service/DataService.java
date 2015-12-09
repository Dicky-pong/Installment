package com.qfq.service;

public interface DataService {

	public int[] getSalesByGoods(String goodsId, String year, String month);

	public int[] getSalesByGoods(String goodsId, String year);
	
}
