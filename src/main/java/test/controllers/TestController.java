package test.controllers;

import framework.annotation.Controller;
import framework.annotation.GetMapping;
import framework.annotation.PostMapping;
import framework.utils.ModelAndView;


@Controller
public class TestController {

    @GetMapping("/test/sprint6")
    public ModelAndView showNameForm() {
        return new ModelAndView("nameForm");
    }



    @PostMapping("/new/name")
    public String saveName(String nom, int age) {
        System.out.println("Nom reçu : " + nom);
        System.out.println("Age reçu : " + age);
        return "Nom recu:" + nom + " et age recu:" + age; 
    }
}