package ru.sladkov.otus.spring.hw10.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.sladkov.otus.spring.hw10.domain.Author;
import ru.sladkov.otus.spring.hw10.service.AuthorService;

import java.util.List;

@RestController
public class AuthorController {

    private final AuthorService authorService;

    public AuthorController(AuthorService authorService) {
        this.authorService = authorService;
    }

    @GetMapping("/api/authors")
    public List<Author> getAllAuthors() {
        return authorService.getAll();
    }
}
