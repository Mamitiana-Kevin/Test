package test.controllers;

import framework.annotation.Controller;
import framework.annotation.GetMapping;
import framework.annotation.Json;

import java.util.Arrays;
import java.util.List;

@Controller
public class ApiTestController {

    // Modèle simple pour le test
    public static class Produit {
        public int id;
        public String nom;
        public double prix;

        public Produit(int id, String nom, double prix) {
            this.id = id;
            this.nom = nom;
            this.prix = prix;
        }
    }

    // Liste statique -> {"count":..., "data":[...]}
    @GetMapping("/api/produits")
    @Json
    public List<Produit> listeProduits() {
        return Arrays.asList(
                new Produit(1, "Clavier", 25000),
                new Produit(2, "Souris", 12000),
                new Produit(3, "Ecran", 350000)
        );
    }

    // Objet unique -> {"status":"success","code":200,"data":{...},"message":null}
    @GetMapping("/api/produit")
    @Json
    public Produit unProduit() {
        return new Produit(1, "Clavier", 25000);
    }
}