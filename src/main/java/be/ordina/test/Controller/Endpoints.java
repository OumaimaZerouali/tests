package be.ordina.test.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Endpoints {

    @GetMapping("/")
    public String landing() {
        return "This does not seem fun";
    }

    @GetMapping("/other")
    public String other() {
        return "Endpoint for the win";
    }


    @GetMapping("/others")
    public String others() {
        return "Endpoinst for the win";
    }

    @GetMapping("/shit")
    public String shit() {
        return "shitttt for the win";
    }
}
