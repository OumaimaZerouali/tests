package be.ordina.test.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping("/home")
    public String home() {
        return "Hello World";
    }

    @GetMapping("/start")
    public String start() {
        return "Bye World";
    }

    @GetMapping("/bye")
    public String bye() {
        return "Bye";
    }

}
