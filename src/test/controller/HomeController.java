package test.controller;

import framework.annotation.GetMapping;

public class HomeController {

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello depuis le controller !";
    }
}
