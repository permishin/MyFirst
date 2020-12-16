package org.example.controllers;


import org.example.model.Skills;
import org.example.repo.SkillsRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AboutController {

    @Autowired
    private SkillsRepo skillsRepo;

    @GetMapping("/about")
    public String About(Model model) {
        Iterable<Skills> skills = skillsRepo.findAll();
        model.addAttribute("skills", skills);
        model.addAttribute("title", "Обо мне");
        return "about";
    }


    @PostMapping("/about/{id}/remove")
    public String delete(@PathVariable(value = "id") Long id, Model model) {
        Skills skills = skillsRepo.findById(id).orElseThrow();
        skillsRepo.delete(skills);
        return "redirect:/about";
    }


    @PostMapping("/about")
    public String addSkill(@RequestParam String skill, String description, Model model) {
        Skills addSkill = new Skills(skill, description);
        skillsRepo.save(addSkill);
        Iterable<Skills> skills = skillsRepo.findAll();
        model.addAttribute("skills", skills);
        return "redirect:/about";
    }

}
