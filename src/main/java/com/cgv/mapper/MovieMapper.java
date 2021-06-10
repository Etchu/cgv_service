package com.cgv.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.cgv.vo.ActorVO;
import com.cgv.vo.DirectorVO;
import com.cgv.vo.GenreVO;
import com.cgv.vo.MovieVO;

@Mapper
public interface MovieMapper {
	public List<MovieVO> selectMovieList();
	public MovieVO selectMovieBySeq(Integer no);
	
	public List<ActorVO> selectActorByMovieSeq(Integer seq);
	public List<DirectorVO> selectDirectorByMovieSeq(Integer seq);
	public List<GenreVO> selectGenreByMovieSeq(Integer seq);
	
}
