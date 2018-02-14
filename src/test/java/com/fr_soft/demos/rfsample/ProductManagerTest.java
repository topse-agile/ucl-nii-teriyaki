package com.fr_soft.demos.rfsample;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.Is.is;

import org.junit.Test;

public class ProductManagerTest {

    @Test
    public void testGetStocksReturnsZeroIfStockIsEmpty() {
        ProductManager productManager = new ProductManager();

        assertThat(productManager.getStocks("Tea"), is(0));
    }

    @Test
    public void testGetStocksReturnsTheStocks() {
        ProductManager productManager = new ProductManager();

        productManager.addStocks("Tea", 10);
        productManager.addStocks("Tea", 20);

        assertThat(productManager.getStocks("Tea"), is(30));
    }
    
    @Test
    public void testGetPricesReturns100(){
    	ProductManager productManager = new ProductManager();
    	productManager.setPrice("Tea", 100);
    	assertThat(productManager.getPrices("Tea"), is(100));
    }


}
