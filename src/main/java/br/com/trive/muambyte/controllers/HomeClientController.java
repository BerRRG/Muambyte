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

import br.com.trive.muambyte.daos.ClientDao;
import br.com.trive.muambyte.models.User;

@Controller
@RequestMapping("account")
@Transactional
public class HomeClientController
{
   @Autowired
   private ClientDao clientDao;

   @GetMapping("/form")
   public ModelAndView form(User client)
   {
      ModelAndView modelAndView = new ModelAndView("admin/client/form-add");
      return modelAndView;

   }
   
   @PostMapping
   public ModelAndView save(@Valid User client, BindingResult bindingResult)
   {
      if (bindingResult.hasErrors())
      {
         return form(client);
      }
      clientDao.save(client);
      
      return new ModelAndView("redirect:/account/"+client.getId());
   }

   @GetMapping("/{id}")
   public ModelAndView load(@PathVariable("id") Long id)
   {
      ModelAndView modelAndView = new ModelAndView("admin/client/account");
      modelAndView.addObject("client", clientDao.findById(id));
      return modelAndView;
   }

   @GetMapping
   public ModelAndView list(@RequestParam(defaultValue = "0", required = false) int page)
   {
      ModelAndView modelAndView = new ModelAndView("admin/client/list");
      modelAndView.addObject("paginatedList", clientDao.paginated(page, 10));
      return modelAndView;
   }

   @GetMapping("/remove/{id}")
   public String remove(@PathVariable("id") Long id)
   {
	  User client = clientDao.findById(id);
      clientDao.remove(client);
      return "redirect:/admin/client";
   }

   @PostMapping("/{id}")
   public ModelAndView update(@PathVariable("id") Long id, @Valid User client, BindingResult bindingResult)
   {
      client.setId(id);
      if (bindingResult.hasErrors())
      {
         return new ModelAndView("admin/client/form-update");
      }
      clientDao.update(client);
      return new ModelAndView("redirect:/admin/client");
   }
	
	
	
   @GetMapping("/register")
   public ModelAndView register(User client)
   {
      ModelAndView modelAndView = new ModelAndView("admin/client/form-register");
      return modelAndView;

   }   
}
