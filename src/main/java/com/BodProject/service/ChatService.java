package com.BodProject.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.BodProject.dao.ChatDao;
import com.BodProject.dto.ChattingDto;
import com.BodProject.dto.ChattingRoomDto;

@Service
public class ChatService {

	@Autowired
	ChatDao cdao;
	
	public ModelAndView moveChatting(String friendNick, String loginNick) {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		System.out.println("moveChatting service 실행");
		System.out.println("friendNick , loginNick : " + friendNick + " / " + loginNick);	
		String roomCode = cdao.getRoomCode(friendNick, loginNick);
		if(roomCode == null) {
			String maxRoomNumber = cdao.getMaxRoomCode();
			System.out.println("maxRoomNumber : " + maxRoomNumber);			
			if (maxRoomNumber == null) {
				roomCode = "R00" + 1;
			} else {
				maxRoomNumber = maxRoomNumber.substring(1);
				int num = Integer.parseInt(maxRoomNumber) + 1;
				System.out.println("num : " + num);
				if (num < 10) {
					roomCode = "R00" + num;
				} else if (num < 100) {
					roomCode = "R0" + num;
				} else if (num < 1000) {
					roomCode = "R" + num;
				}
			}
			int makeRoomResult1 = cdao.insertRoomInfo(loginNick, roomCode);
			int makeRoomResult2 = cdao.insertRoomInfo(friendNick, roomCode);
			System.out.println("makeRoomResult 11 나와야 채팅방 생성 : " + makeRoomResult1 + makeRoomResult2);
		}
		System.out.println("roomCode : " + roomCode + " friendNick : " + friendNick + " loginNick : " + loginNick);
		//채팅내역 select
		ArrayList<ChattingDto> chattingList = cdao.getChattIngList(roomCode);
		System.out.println(chattingList);
		System.out.println("roomcode : " + roomCode);
		mav.addObject("chattingList", chattingList);
		mav.addObject("roomCode", roomCode);
		mav.addObject("friendNick", friendNick);
		mav.setViewName("include/chat");
		return mav;
	}

	public ArrayList<ChattingDto> getChattingList(String loginNick) {
		// TODO Auto-generated method stub
		
		ArrayList<ChattingDto> chattingList = new ArrayList<ChattingDto>();
		ArrayList<ChattingRoomDto> chattingRoomList = cdao.getChattingRoomCodeList(loginNick);
		System.out.println("chattingRoomList.size : " + chattingRoomList.size());
		for(int i = 0; i < chattingRoomList.size(); i++) {
			String roomCode = chattingRoomList.get(i).getRoomcode();
			System.out.println("roomCode : " + roomCode);
			ChattingDto cdto = cdao.getLastChat(roomCode, loginNick);

			if (cdto.getChmprofile().contains("http")) {
			} else {
				String mprofile = "/resources/uploadImg/userimg/" + cdto.getChmprofile();
				cdto.setChmprofile(mprofile);
			}
			chattingList.add(cdto);			
		}
		return chattingList;
	}

	public int saveMsg(String userNick, String msg, String roomCode) {
		// TODO Auto-generated method stub
		int saveMsgResult = cdao.saveMsg(userNick, msg, roomCode);
		return saveMsgResult;
	}


}
