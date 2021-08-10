package com.BodProject.chating;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.BodProject.dto.ChattingDto;
import com.BodProject.dto.ChattingRoomDto;
import com.BodProject.service.ChatService;
import com.google.gson.Gson;


@Controller
public class ChatController {
	
	@Autowired
	private ChatService csvc;
	
		@RequestMapping("/moveChatting")
		public ModelAndView moveChatting(String friendNick, String loginNick) {
			ModelAndView mav = new ModelAndView();
			System.out.println("moveChatting contoller 실행");			
			mav = csvc.moveChatting(friendNick, loginNick);
			return mav;
		}
		
		@RequestMapping("/chattingList")
		public @ResponseBody String chattingList(String loginNick) {
			System.out.println("chattingList controller 실행");
			ArrayList<ChattingDto> chattingList = csvc.getChattingList(loginNick);
			Gson gson = new Gson();
			String json_chattingList = gson.toJson(chattingList);
			return json_chattingList;
		}
		
		@RequestMapping(value= "/saveMsg")
		public @ResponseBody int saveMsg(String userNick, String msg, String roomCode) {
			System.out.println("saveMsg controller 실행");
			System.out.println("userNick, msg, roomCode : " + userNick + " / " + msg + " / " + roomCode);
			int saveResult = csvc.saveMsg(userNick, msg, roomCode);
			return saveResult;
		}
		
		

}
