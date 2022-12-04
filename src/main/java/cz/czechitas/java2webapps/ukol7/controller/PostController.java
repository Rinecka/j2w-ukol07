package cz.czechitas.java2webapps.ukol7.controller;

import cz.czechitas.java2webapps.ukol7.services.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.data.domain.Pageable;

public class PostController {

    @Autowired
    private PostService postService;

    @GetMapping("/")
    public ModelAndView seznamPostu(@PageableDefault(sort = {"id"}, size = 20) Pageable pageable) {
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("seznam", postService.seznamPostu(pageable));
        return modelAndView;

    }

    @GetMapping("/post/{slug}")
    public ModelAndView vybranyPost(@PathVariable String slug) {
        ModelAndView modelAndView = new ModelAndView("detail");
        modelAndView.addObject("vybranyPost", postService.singlePost(slug));
        return modelAndView;

    }


}

