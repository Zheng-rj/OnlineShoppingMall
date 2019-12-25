package com.zrj.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.HttpRequestHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.zrj.po.Item;

public class ItemController implements HttpRequestHandler {

	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Item> list = new ArrayList<Item>();
		
		Item i1 = new Item();
		Item i2 = new Item();
		
		i1.setItemName("cocaCola");
		i1.setPrice(3f);
		i2.setItemName("MI6");
		i2.setPrice(2600f);
		
		list.add(i1);
		list.add(i2);
		
		request.setAttribute("items", list);
		request.getRequestDispatcher("WEB-INF/jsp/List.jsp").forward(request, response);
	}


}
