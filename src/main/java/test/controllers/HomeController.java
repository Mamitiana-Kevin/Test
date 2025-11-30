package main.java.test.controllers;

import framework.annotation.Controller;
import framework.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello from HomeController!";
    }

    @GetMapping("/home")
    public void homedadad() {
        // auto shows: controller HomeController method home
    }
}