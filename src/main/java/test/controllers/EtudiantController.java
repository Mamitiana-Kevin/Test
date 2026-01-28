package test.controllers;

import framework.annotation.Controller;
import framework.annotation.GetMapping;
import framework.annotation.RequestParam;
import framework.utils.ModelAndView;
import java.util.*;


@Controller
public class EtudiantController {

    // Cas 1: Binding par nom (URL: /Test/etudiant?id=2)
    @GetMapping("/etudiant")
    public String getEtudiant(long id) {
        return "Etudiant ID = " + id;
    }

    // Cas 2: Avec @RequestParam (URL: /Test/search?q=java&limit=10)
    @GetMapping("/search")
    public String search(
        @RequestParam("q") String query,
        @RequestParam(value = "limit", defaultValue = "20") int limit
    ) {
        return "Recherche: " + query + " (Limit: " + limit + ")";
    }
}