package com.cgv.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.cgv.vo.LoginVO;
import com.cgv.vo.MemberVO;
import com.cgv.vo.SimpleMemberVO;


@Mapper
public interface MemberMapper {
	public Integer memberLogin(LoginVO vo);
	public SimpleMemberVO selectSimpleMemberInfo(LoginVO vo);
	public void insertMemberInfo(MemberVO vo);
	public Integer selectUserCntById(String id);
	public Integer selectUserCntByEmail(String email);
}
