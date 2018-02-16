package com.fr_soft.demos.rfsample;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProductServlet extends HttpServlet {

    private static final long serialVersionUID = 6961400581681209885L;
    
    String array[]={"arg1","arg2","arg3","arg4","total"};
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        for(String arg : array){
        	request.setAttribute(arg, 0);
        }
        request.getRequestDispatcher("calculator.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String valueStr;
        for(String arg : array){
    		valueStr = request.getParameter(arg);
            request.setAttribute(arg, valueStr);        
        }

    	String arg1;
        try {
            Integer v1;
            int value;
            for(int i = 1; i <= 4; i++){
            	String num_str = String.valueOf(i);
                if(request.getParameter("add" + num_str) != null)
            	{
	            	arg1 = request.getParameter("arg" + num_str);
	            	v1 = Integer.parseInt(arg1);
	            	value = v1.intValue() + 1;
	                request.setAttribute("arg" + num_str, String.valueOf(value));
            	}
                else if(request.getParameter("delete" + num_str) != null) {
	            	arg1 = request.getParameter("arg" + num_str);
	            	v1 = Integer.parseInt(arg1);
	            	value = v1.intValue() - 1;
	                request.setAttribute("arg" + num_str, String.valueOf(value));
            	}
            }
        	if(request.getParameter("calculate") != null){
        		int total = 0;
        		String pricestr[] = {"price1", "price2", "price3", "price4"};
        		for(int i=0;i<4;i++){
        			int arg_num = Integer.parseInt(request.getParameter(array[i]));
        			int price = Integer.parseInt(request.getParameter(pricestr[i]));
        			total += arg_num*price;
                }
        		request.setAttribute("total", String.valueOf(total));
        	}

        } catch (NumberFormatException e) {
        	for(int i=0;i<4;i++){
                request.setAttribute(array[i], "N/A");
            }
        }
        
        request.getRequestDispatcher("calculator.jsp").forward(request, response);
    }

}
