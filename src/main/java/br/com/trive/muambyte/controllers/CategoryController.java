package br.com.trive.muambyte.controllers;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.trive.muambyte.daos.CategoryDao;
import br.com.trive.muambyte.models.Category;

@Controller
@RequestMapping("admin/category")
@Transactional
public class CategoryController
{

   @Autowired
   private CategoryDao categoryDao;

   @GetMapping("/form")
   public ModelAndView form(Category category)
   {
      ModelAndView modelAndView = new ModelAndView("admin/category/form-add");
      return modelAndView;

   }

   @PostMapping
   public ModelAndView save(@Valid Category category, BindingResult bindingResult)
   {
      if (bindingResult.hasErrors())
      {
         return form(category);
      }
      categoryDao.save(category);
      return new ModelAndView("redirect:/admin/category");
   }

   @GetMapping("/{id}")
   public ModelAndView load(@PathVariable("id") Integer id)
   {
      ModelAndView modelAndView = new ModelAndView("admin/category/form-update");
      modelAndView.addObject("category", categoryDao.findById(id));
      return modelAndView;
   }

   @GetMapping
   public ModelAndView list(@RequestParam(defaultValue = "0", required = false) int page)
   {
      ModelAndView modelAndView = new ModelAndView("admin/category/list");
      modelAndView.addObject("paginatedList", categoryDao.paginated(page, 10));
      return modelAndView;
   }

   @GetMapping("/remove/{id}")
   public String remove(@PathVariable("id") Integer id)
   {
      Category category = categoryDao.findById(id);
      categoryDao.remove(category);
      return "redirect:/admin/category";
   }

   @PostMapping("/{id}")
   public ModelAndView update(@PathVariable("id") Integer id, @Valid Category category, BindingResult bindingResult)
   {
      category.setId(id);
      if (bindingResult.hasErrors())
      {
         return new ModelAndView("admin/category/form-update");
      }
      categoryDao.update(category);
      return new ModelAndView("redirect:/admin/category");
   }
}
