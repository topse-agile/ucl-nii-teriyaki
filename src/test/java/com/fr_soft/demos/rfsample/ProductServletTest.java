package com.fr_soft.demos.rfsample;

import static org.junit.Assert.*;

import java.io.IOException;

import javax.servlet.ServletException;

import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;

public class ProductServletTest {

    private ProductServlet servlet = new ProductServlet();
    private MockHttpServletRequest request = new MockHttpServletRequest();
    private MockHttpServletResponse response = new MockHttpServletResponse();

    @Test
    public void test_doGetShouldReturnsNoArgsAndResult() throws IOException, ServletException {
        this.servlet.doGet(this.request, this.response);

        assertEquals(0, this.request.getAttribute("arg1"));
    }

    @Test
    public void test_doPostReturnsErrorMessageIfArg1IsNotNumber() throws IOException, ServletException {
        this.request.addParameter("arg1", "XYZ");
        this.request.addParameter("add1", "");

        this.servlet.doPost(this.request, this.response);

        assertEquals("N/A", this.request.getAttribute("arg1"));
    }

    @Test
    public void test_doPostReturnsAnswerAddArgIsNumber() throws IOException, ServletException {
        this.request.addParameter("arg1", "3");
        this.request.addParameter("add1", "");
        this.servlet.doPost(this.request, this.response);
        assertEquals("4", this.request.getAttribute("arg1"));
    }
    
    @Test
    public void test_doPostReturnsAnswerDeleteArgIsNumber() throws IOException, ServletException {
        this.request.addParameter("arg1", "3");
        this.request.addParameter("delete1", "");
        this.servlet.doPost(this.request, this.response);
        assertEquals("2", this.request.getAttribute("arg1"));
    }
    
    @Test
    public void test_doPostReturnsAnswerTotalCost() throws IOException, ServletException {
        this.request.addParameter("arg1", "1");
        this.request.addParameter("arg2", "2");
        this.request.addParameter("arg3", "3");
        this.request.addParameter("arg4", "4");
        this.request.addParameter("price1", "100");
        this.request.addParameter("price2", "200");
        this.request.addParameter("price3", "300");
        this.request.addParameter("price4", "300");
        this.request.addParameter("calculate", "");
        this.servlet.doPost(this.request, this.response);
        assertEquals("2600", this.request.getAttribute("total"));
    }
    
}
