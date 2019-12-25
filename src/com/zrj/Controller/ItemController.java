package com.zrj.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zrj.po.Item;

@Controller
public class ItemController{
	@RequestMapping("/queryItems.action")
	public ModelAndView selectItems() {
		List<Item> list = new ArrayList<Item>();
		
		Item i1 = new Item();
		Item i2 = new Item();
		
		i1.setItemName("cocaCola");
		i1.setPrice(3f);
		i2.setItemName("MI6");
		i2.setPrice(2600f);
		
		list.add(i1);
		list.add(i2);
		
		ModelAndView modelAndView = new ModelAndView("List","items",list);
		return modelAndView;
	}
}
