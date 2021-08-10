package com.BodProject.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.BodProject.dto.ChattingDto;
import com.BodProject.dto.ChattingRoomDto;

public interface ChatDao {
	@Select("SELECT ROOMCODE FROM CHATTINGROOM WHERE CHNICK = #{userNick}")
	String[] getMyChattingRoom(String userNick);

	@Select("SELECT MAX(ROOMCODE) FROM CHATTINGROOM WHERE RoomCode LIKE 'R%'")
	String getMaxRoomCode();

	@Insert("INSERT INTO CHATTINGROOM(ROOMCODE, CHNICK) VALUES(#{RoomCode}, #{userNick})")
	int insertRoomInfo(@Param("userNick") String userNick, @Param("RoomCode") String RoomCode);

	@Select("SELECT ROOMCODE FROM CHATTINGROOM  WHERE CHNICK = #{friendNick} OR CHNICK = #{userNick}  GROUP BY ROOMCODE HAVING COUNT(ROOMCODE) > 1")
	String getRoomCode(@Param("friendNick") String friendNick ,@Param("userNick") String userNick);

	@Select("SELECT CHNICK FROM CHATTINGROOM WHERE ROOMCODE = #{roomCode}")
	String getFrNcik(String roomCode);

//	@Select("SELECT CHNICK FROM CHATTINGROOM WHERE ROOMCODE IN (SELECT ROOMCODE FROM CHATTINGROOM WHERE CHNICK = #{loginNick}) AND CHNICK NOT IN (#{loginNick})")
//	String[] getChattingFriendList(String loginNick);

	@Insert("INSERT INTO CHATTING  VALUES(#{userNick}, #{msg}, SYSDATE, #{roomCode})")
	int saveMsg(@Param("userNick") String userNick,@Param("msg") String msg,@Param("roomCode") String roomCode);

	@Select("SELECT * FROM CHATTING WHERE CHROOMCODE = #{roomCode} ORDER BY CHDATE")
	ArrayList<ChattingDto> getChattIngList(@Param("roomCode") String roomCode);

	@Select("SELECT * FROM CHATTINGROOM WHERE CHNICK = #{loginNick}")
	ArrayList<ChattingRoomDto> getChattingRoomCodeList(@Param("loginNick") String loginNick);

	@Select("SELECT CHATTING.CHNICKNAME AS chnickname, CHATTING.CHCHATTING AS chchatting, MEMBER.MPROFILE AS chmprofile, CHATTING.CHDATE AS chdate FROM CHATTING INNER JOIN MEMBER ON CHATTING.CHNICKNAME = MEMBER.MNICK WHERE CHDATE IN (SELECT MAX(CHDATE) FROM CHATTING WHERE CHROOMCODE = #{roomCode} AND NOT CHNICKNAME = #{loginNick})")
	ChattingDto getLastChat(@Param("roomCode") String roomCode, @Param("loginNick") String loginNick);

}
