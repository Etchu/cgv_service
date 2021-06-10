package com.cgv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cgv.mapper.MemberMapper;
import com.cgv.utils.AESAlgorithm;
import com.cgv.vo.LoginVO;
import com.cgv.vo.MemberVO;
import com.cgv.vo.SimpleMemberVO;


@Service
public class MemberService {
	@Autowired
	MemberMapper mapper;
	
	public boolean memberLogin(LoginVO vo) {
		return mapper.memberLogin(vo) == 1;
	}
	
	public SimpleMemberVO selectSimpleMemberInfo(LoginVO vo) {
		return mapper.selectSimpleMemberInfo(vo);
	}
	
	public void insertMemberInfo(MemberVO vo) {
		String password = vo.getCmm_pwd();
		try {
			password = AESAlgorithm.Encrypt(password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		vo.setCmm_pwd(password);
		
		mapper.insertMemberInfo(vo);
		
	}
	
	public boolean userIdCheck(String id) {
		return !(mapper.selectUserCntById(id) > 0);
	}
	
	public boolean userEmailCheck(String email) {
		return !(mapper.selectUserCntByEmail(email) > 0);
	}
}




