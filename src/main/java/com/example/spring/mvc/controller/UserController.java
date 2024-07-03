package com.example.spring.mvc.controller;

import com.example.spring.mvc.domain.User;
import com.example.spring.mvc.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("users", users);
        return "admin/user/table-user";
    }

    @GetMapping("/admin/user/{id}")
    public String getDetailUserPage(Model model, @PathVariable Long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("user", user);
        return "admin/user/show";
    }

    @GetMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping(value = "/admin/user/create")
    public String createUserPage(Model model, @ModelAttribute("newUser") User user) {
        this.userService.handleSaveUser(user);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/update/{id}")
    public String getUpdateUserPage(Model model, @PathVariable Long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("newUser", user);
        return "admin/user/update";
    }

    @PostMapping(value = "/admin/user/update")
    public String handleUpdateUserPage(Model model, @ModelAttribute("newUser") User user) {
        User userDb = this.userService.getUserById(user.getId());
        if (userDb != null) {
            userDb.setAddress(user.getAddress());
            userDb.setFullName(user.getFullName());
            userDb.setPhone(user.getPhone());
        }
        this.userService.handleSaveUser(userDb);
        return "redirect:/admin/user";
    }
}
