package test.controllers;

import framework.annotation.Controller;
import framework.annotation.GetMapping;

@Controller
public class UserController {

    @GetMapping("/user")
    public void showUser() {
    }
}
