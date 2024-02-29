package com.example.freemarker;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;

@Controller
public class TestController {
    @RequestMapping("/")
    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
        model.addAttribute("aBoolean",true);
        model.addAttribute("aDate",new Date());
        model.addAttribute("aNumber1",1000000);
        model.addAttribute("aNumber2",123.456);
        model.addAttribute("aString", "aStringValue");

        String[] aStringArray = new String[]{"aa", "bb", "cc", "dd"};
        model.addAttribute("aStringArray", aStringArray);
        return "file01";
    }
}
