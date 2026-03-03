package test.controllers;

import framework.annotation.Controller;
import framework.annotation.GetMapping;
import framework.annotation.PostMapping;
import framework.utils.ModelAndView;
import test.models.Etudiant;

@Controller
public class EtudiantController {

    @GetMapping("/etudiant")
    public ModelAndView form() {
        return new ModelAndView("etudiant/form");
    }

    @PostMapping("/etudiant")
    public ModelAndView save(Etudiant etudiant) {   // ← Binding automatique !

        System.out.println("===== Étudiant reçu =====");
        System.out.println("Nom     : " + etudiant.getNom());
        System.out.println("Prénom  : " + etudiant.getPrenom());
        System.out.println("Email   : " + etudiant.getEmail());
        System.out.println("Ville   : " + etudiant.getAdresse().getVille());
        System.out.println("Code Postal : " + etudiant.getAdresse().getCodePostal());
        System.out.println("Rue     : " + etudiant.getAdresse().getRue());
        System.out.println("=========================");

        return new ModelAndView("etudiant/result")
                .addObject("etudiant", etudiant);
    }
}