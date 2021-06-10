package com.cgv.api;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.cgv.service.MovieImageService;

@RestController
public class MovieAPIController {
	
	@Autowired
	MovieImageService imageService;
	
	@GetMapping("/movie_img/{fileName}")
	public ResponseEntity<Resource> getMovieImage(@PathVariable String fileName, HttpServletRequest request) throws Exception {
		Resource resource = imageService.getMovieImage(fileName);
		
		String contentType = null;
		contentType = request.getServletContext().getMimeType(resource.getFile().getAbsolutePath());
		if(contentType == null) {
			contentType = "application/octet-stream";
		}
		
		return ResponseEntity.ok()
				.contentType(MediaType.parseMediaType(contentType))
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename*=\""+resource.getFilename()+"\"")
				.body(resource);
	}
}
