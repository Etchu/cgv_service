package com.cgv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cgv.service.MovieService;
import com.cgv.vo.ActorVO;
import com.cgv.vo.DirectorVO;
import com.cgv.vo.GenreVO;
import com.cgv.vo.MovieVO;

@Controller
public class MovieController {
	
	@Autowired
	MovieService service;
	
	@GetMapping("/movie_list")
	public String getMain(Model model){
		
		List<MovieVO> list = service.selectMovies();
		model.addAttribute("list", list);
		model.addAttribute("menuNum", 1);
		
		return "/movieInfo/movie_list";
	}
	
	@GetMapping("/movie_detail")
	public String getMovie(Model model, @RequestParam Integer no){
		
		MovieVO list = service.selectMovieBySeq(no);
		model.addAttribute("list", list);
		
		Integer seq = no;
		List<ActorVO> actorList = service.selectActorByMovieSeq(seq);
		model.addAttribute("actorList", actorList);
		
		List<DirectorVO> directorList = service.selectDirectorByMovieSeq(seq);
		model.addAttribute("directorList", directorList);
		
		List<GenreVO> genreList = service.selectGenreByMovieSeq(seq);
		model.addAttribute("genreList", genreList);
		
		return "/movieInfo/movie_detail";
	}
}
