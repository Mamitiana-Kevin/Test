package main.java.test.controllers;

import framework.annotation.Controller;
import framework.annotation.GetMapping;
import framework.utils.ModelAndView;
import java.util.*;

@Controller
public class UserController {

    @GetMapping("/users")
    public ModelAndView listUsers() {
        List<Map<String, String>> users = new ArrayList<>();
        Map<String, String> u1 = new HashMap<>();
        u1.put("name", "Rabe"); u1.put("email", "rabe@gmail.com");
        Map<String, String> u2 = new HashMap<>();
        u2.put("name", "Rakoto"); u2.put("email", "rakoto@gmail.com");
        users.add(u1); users.add(u2);

        return new ModelAndView("users/list")
                .addObject("users", users)
                .addObject("title", "List of All Users");
    }


}