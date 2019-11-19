package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculatorController  {
    @GetMapping("/home")
    public String home() {
        return "home";
    }
    @GetMapping("/calculator")
    public String calculator(@RequestParam int num1, int num2, String calculator, Model model){
        int result;
        switch (calculator) {
            case  "Addition(+)":
                result = num1 + num2;
                break;
            case "Subtraction(-)":
                result = num1 - num2;
                break;
            case "Multiplication(X)":
                result = num1 * num2;
                break;
            case "Division(/)":
                try {
                result = num1 / num2;
                } catch (Exception e) {
                    return "error";
                }
                break;
            default:
                result = 0;
        }
        model.addAttribute("result",result);
        return "home";
    }
}
