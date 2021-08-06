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

	@Select("SELECT CHNICK FROM CHATTINGROOM WHERE ROOMCODE IN (SELECT ROOMCODE FROM CHATTINGROOM WHERE CHNICK = #{loginNick}) AND CHNICK NOT IN (#{loginNick})")
	String[] getChattingFriendList(String loginNick);

	@Insert("INSERT INTO CHATTING  VALUES(#{userNick}, #{msg}, SYSDATE, #{roomCode})")
	int saveMsg(@Param("userNick") String userNick,@Param("msg") String msg,@Param("roomCode") String roomCode);

	@Select("SELECT * FROM CHATTING WHERE CHROOMCODE = #{roomCode} ORDER BY CHDATE")
	ArrayList<ChattingDto> getChattIngList(@Param("roomCode") String roomCode);

}
