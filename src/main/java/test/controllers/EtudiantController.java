package test.controllers;

import framework.annotation.Controller;
import framework.annotation.GetMapping;
import framework.annotation.PostMapping;
import framework.utils.ModelAndView;

import java.util.Map;

@Controller
public class EtudiantController {

    // Affiche le formulaire
    @GetMapping("/etudiant")
    public ModelAndView form() {
        return new ModelAndView("etudiant/form");
    }

    // Reçoit les données du formulaire via Map
    @PostMapping("/etudiant")
    public ModelAndView save(Map<String, Object> form) {

        System.out.println("===== Données reçues dans le Map =====");
        form.forEach((key, value) -> System.out.println(key + " = " + value));
        System.out.println("======================================");

        return new ModelAndView("etudiant/result")
                .addObject("nom", form.get("nom"))
                .addObject("prenom", form.get("prenom"))
                .addObject("dateNaissance", form.get("dateNaissance"))
                .addObject("email", form.get("email"));
    }
}