package com.cgv.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cgv.mapper.MovieImageMapper;
import com.cgv.mapper.MovieMapper;
import com.cgv.vo.ActorVO;
import com.cgv.vo.DirectorVO;
import com.cgv.vo.GenreVO;
import com.cgv.vo.MovieVO;

@Service
public class MovieService {
	
	@Autowired
	MovieMapper mapper;
	
	@Autowired
	MovieImageMapper imageMapper;
	
	public List<MovieVO> selectMovies(){
		List<MovieVO> list = mapper.selectMovieList();
		String prefix="/movie_img/";
		list.forEach(item -> {
			 String uri = imageMapper.selectMovieImageURI(item.getCmi_seq());
			 if(uri != null) {
				 item.setImage_uri(prefix+uri);
			 }
		});
		return list;
	}
	
	public MovieVO selectMovieBySeq(Integer no) {
		MovieVO list = mapper.selectMovieBySeq(no);
		Integer seq = no;
		String imageName = imageMapper.selectMovieImageName(seq);
		list.setImage_name(imageName);
		
		String prefix="/movie_img/";
		String uri = imageMapper.selectMovieImageURI(no);
		if(uri != null) {
			list.setImage_uri(prefix+uri);
		}
		return list;
	}
	
	public List<ActorVO> selectActorByMovieSeq(Integer seq) {
		List<ActorVO> resultList = new ArrayList<ActorVO>();
		
		resultList = mapper.selectActorByMovieSeq(seq);
		
		return resultList;
	}
	
	public List<DirectorVO> selectDirectorByMovieSeq(Integer seq) {
		List<DirectorVO> resultList = new ArrayList<DirectorVO>();
		
		resultList = mapper.selectDirectorByMovieSeq(seq);
		
		return resultList;
	}
	
	public List<GenreVO> selectGenreByMovieSeq(Integer seq) {
		List<GenreVO> resultList = new ArrayList<GenreVO>();
		
		resultList = mapper.selectGenreByMovieSeq(seq);
		
		return resultList;
	}
	
}
