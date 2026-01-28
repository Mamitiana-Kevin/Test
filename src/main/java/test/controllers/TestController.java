package test.controllers;

import framework.annotation.Controller;
import framework.annotation.GetMapping;
import framework.annotation.PostMapping;
import framework.annotation.RequestParam;
import framework.utils.ModelAndView;


@Controller
public class TestController {

    @GetMapping("/test/sprint6")
    public ModelAndView showNameForm() {
        return new ModelAndView("nameForm");
    }



    // @PostMapping("/new/name")
    // public String saveName(String nom, int age) {
    //     System.out.println("Nom reçu : " + nom);
    //     System.out.println("Age reçu : " + age);
    //     return "Nom recu:" + nom + " et age recu:" + age; 
    // }

    // Cas 1: Mapping explicite (le paramètre HTTP "u_name" ira dans la variable "nom")
    @PostMapping("/new/name")
    public String saveUser(@RequestParam("nom") String n, @RequestParam("age") int a) {
        return "Request param///Nom recu:" + n + " et age recu:" + a; 
    }
}