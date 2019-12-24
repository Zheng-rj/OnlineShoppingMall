package com.zrj.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.zrj.po.Item;

public class ItemController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Item> items = new ArrayList<Item>();
		
		Item i1 = new Item();
		i1.setItemName("cocaCola");
		i1.setPrice(3F);
		
		Item i2 = new Item();
		i2.setItemName("MI6");
		i2.setPrice(2600F);
		
		items.add(i1);
		items.add(i2);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("items", items);
		modelAndView.setViewName("WEB-INF/jsp/List.jsp");
		return modelAndView;
	}


}
