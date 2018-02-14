package com.fr_soft.demos.rfsample;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by doi on 2018/02/13.
 */
public class ProductManager {

    private Map<String, Integer> stocks = new HashMap();
    private Map<String, Integer> prices = new HashMap();

    public int getStocks(String item) {
        Integer amount = stocks.get(item);
        if (amount == null) {
            return 0;
        }
        return amount;
    }

    public void addStocks(String item, int amount) {
    	Integer curAmount = getStocks(item);
    	curAmount += amount;	
        stocks.put(item, curAmount);
    }
    
    public int getPrices(String item) {
    	Integer price = prices.get(item);
    	return price;
    }

	public void setPrice(String item, int price) {
		prices.put(item, price);
	}
}
