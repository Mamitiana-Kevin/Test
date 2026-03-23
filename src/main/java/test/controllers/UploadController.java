package test.controllers;

import framework.annotation.Controller;
import framework.annotation.GetMapping;
import framework.annotation.PostMapping;
import framework.utils.ModelAndView;

import java.util.Map;

@Controller
public class UploadController {

    // Affiche le formulaire
    @GetMapping("/upload")
    public ModelAndView form() {
        return new ModelAndView("upload/form");
    }

    // Reçoit les fichiers
    @PostMapping("/upload")
    public ModelAndView upload(Map<String, byte[]> files) {

        System.out.println("===== Fichiers reçus =====");
        System.out.println("Nombre de fichiers : " + files.size());

        for (Map.Entry<String, byte[]> entry : files.entrySet()) {
            String fieldName = entry.getKey();
            byte[] content = entry.getValue();
            System.out.println("→ Champ : " + fieldName + " | Taille : " + content.length + " bytes");
        }
        System.out.println("==========================");

        return new ModelAndView("upload/success")
                .addObject("nombreFichiers", files.size())
                .addObject("fichiers", files.keySet());
    }
}