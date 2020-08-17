package org.example.controllers;

import org.example.model.User;
import org.example.repo.MyFirstRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Optional;

@Controller
    public class MyFirstController {
        @Autowired

        private MyFirstRepo myFirstRepo;

        @GetMapping("/")
        public String main(Model model) {
            Iterable<User> posts = myFirstRepo.findAll();
            model.addAttribute("posts", posts);
            model.addAttribute("title","Павел Ермишин");
            return "main";
        }
        @PostMapping ("/")
    public String add(@RequestParam String company, @RequestParam String years, @RequestParam String position, @RequestParam String description, Model model ) {
           User work = new User(company, years, position, description);
           myFirstRepo.save(work);
           Iterable<User> posts = myFirstRepo.findAll();
           model.addAttribute("posts", posts);
            return "redirect:/";
        }
        @GetMapping ("/{id:\\d+}")
    public String details(@PathVariable(value = "id") Long id, Model model) {
            if (!myFirstRepo.existsById(id)) {
                return "redirect:/";
            }
            Optional<User> user = myFirstRepo.findById(id);
            ArrayList<User> res = new ArrayList<>();
            user.ifPresent(res::add);
            model.addAttribute("user", res);
            return "details";
        }
        @PostMapping ("/{id}/remove")
    public String delete(@PathVariable(value = "id") Long id, Model model) {
            User user = myFirstRepo.findById(id).orElseThrow();
            myFirstRepo.delete(user);
            return "redirect:/";
        }
        @GetMapping ("/add")
    public String addpost(Model model) {
            model.addAttribute("title", "Добавить статью");
            return "add";
        }
        @GetMapping ("/{id}/edit")
    public String edit(@PathVariable(value = "id") Long id, Model model) {
            if (!myFirstRepo.existsById(id)) {
                return "redirect:/details";
            }
            Optional<User> user = myFirstRepo.findById(id);
            ArrayList<User> list = new ArrayList<>();
            user.ifPresent(list::add);
            model.addAttribute("user", list);
            return "edit";
        }
        @PostMapping ("/{id}/edit")
    public String PostEdit(@PathVariable(value = "id") Long id, @RequestParam String company, @RequestParam String years, @RequestParam String position, @RequestParam String description, Model model ) {
        User user = myFirstRepo.findById(id).orElseThrow();
        user.setCompany(company);
        user.setYears(years);
        user.setPosition(position);
        user.setDescription(description);
        myFirstRepo.save(user);
        return "redirect:/";
    }

    }

