package com.fr_soft.demos.rfsample;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CountUpServlet extends HttpServlet {

    private static final long serialVersionUID = 6961400581681209885L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("arg1", 0);
        request.setAttribute("arg2", 0);
        request.setAttribute("arg3", 0);
        request.setAttribute("arg4", 0);
        request.setAttribute("total", 0);
//        request.setAttribute("arg2", null);
//        request.setAttribute("result", null);
        request.getRequestDispatcher("calculator.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String valueStr = request.getParameter("arg1");
        request.setAttribute("arg1", valueStr);
        valueStr = request.getParameter("arg2");
        request.setAttribute("arg2", valueStr);
        valueStr = request.getParameter("arg3");
        request.setAttribute("arg3", valueStr);
        valueStr = request.getParameter("arg4");
        request.setAttribute("arg4", valueStr);
        request.setAttribute("total", 0);

    	String arg1;
        try {
        	String argName;
            Integer v1;
            int value;
            if(request.getParameter("add1") != null)
            	{
            	arg1 = request.getParameter("arg1");
            	v1 = Integer.parseInt(arg1);
            	value = v1.intValue() + 1;
                request.setAttribute("arg1", String.valueOf(value));
            	}
            else if(request.getParameter("delete1") != null) {
            	arg1 = request.getParameter("arg1");
            	v1 = Integer.parseInt(arg1);
            	value = v1.intValue() - 1;
                request.setAttribute("arg1", String.valueOf(value));
            	}
            else if(request.getParameter("add2") != null)
        	{
            	arg1 = request.getParameter("arg2");
            	v1 = Integer.parseInt(arg1);
            	value = v1.intValue() + 1;
            	request.setAttribute("arg2", String.valueOf(value));
        	}
            else if(request.getParameter("delete2") != null) {
            	arg1 = request.getParameter("arg2");
            	v1 = Integer.parseInt(arg1);
            	value = v1.intValue() - 1;
            	request.setAttribute("arg2", String.valueOf(value));
        	}
            else if(request.getParameter("add3") != null)
        	{
            	arg1 = request.getParameter("arg3");
            	v1 = Integer.parseInt(arg1);
            	value = v1.intValue() + 1;
            	request.setAttribute("arg3", String.valueOf(value));
        	}
            else if(request.getParameter("delete3") != null) {
            	arg1 = request.getParameter("arg3");
            	v1 = Integer.parseInt(arg1);
            	value = v1.intValue() - 1;
            	request.setAttribute("arg3", String.valueOf(value));
        	}
            else if(request.getParameter("add4") != null)
        	{
            	arg1 = request.getParameter("arg4");
            	v1 = Integer.parseInt(arg1);
            	value = v1.intValue() + 1;
            	request.setAttribute("arg4", String.valueOf(value));
        	}
            else if(request.getParameter("delete4") != null) {
            	arg1 = request.getParameter("arg4");
            	v1 = Integer.parseInt(arg1);
            	value = v1.intValue() - 1;
            	request.setAttribute("arg4", String.valueOf(value));
        	}else if(request.getParameter("calculate") != null){
        		int arg1_num = Integer.parseInt(request.getParameter("arg1"));
        		int arg2_num = Integer.parseInt(request.getParameter("arg2"));
        		int arg3_num = Integer.parseInt(request.getParameter("arg3"));
        		int arg4_num = Integer.parseInt(request.getParameter("arg4"));
        		int price1 = Integer.parseInt(request.getParameter("price1"));
        		int price2 = Integer.parseInt(request.getParameter("price2"));
        		int price3 = Integer.parseInt(request.getParameter("price3"));
        		int price4 = Integer.parseInt(request.getParameter("price4"));
        		int total = (arg1_num * price1) 
        				+ (arg2_num * price2) 
        				+ (arg3_num * price3)
        				+ (arg4_num * price4);
        		request.setAttribute("total", String.valueOf(total));
        	}

        } catch (NumberFormatException e) {
            request.setAttribute("arg1", "N/A");
            request.setAttribute("arg2", "N/A");
            request.setAttribute("arg3", "N/A");
            request.setAttribute("arg4", "N/A");
        }
        
        request.getRequestDispatcher("calculator.jsp").forward(request, response);
    }

}
