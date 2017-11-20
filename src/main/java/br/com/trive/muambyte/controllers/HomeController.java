package br.com.trive.muambyte.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.trive.muambyte.daos.ProductDao;

@Controller
public class HomeController
{
   @Autowired
   private ProductDao productDao;

   @GetMapping("/")
   public ModelAndView list(@RequestParam(defaultValue = "0", required = false) int page)
   {
      ModelAndView modelAndView = new ModelAndView("home/index");
      modelAndView.addObject("paginatedList", productDao.FeaturedPaginated(page, 10));
      return modelAndView;
   }
	
//   @GetMapping("/")
//   public String index()
//   {
//      return "home/index";
//   }
}
