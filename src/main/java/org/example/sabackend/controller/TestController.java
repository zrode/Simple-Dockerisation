package org.example.sabackend.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "*")
public class TestController {

    @GetMapping(path = "index")
    public String getString() {
        return "Bravo ! Tu as réussi à Dockeriser une app et afficher ce message ;)";
    }
}
