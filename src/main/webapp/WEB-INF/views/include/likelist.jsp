<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 좋아요리스트 모달창 -->
 
	<div id="mask1"></div>

    <!--Popup Start -->
    <div id="layerbox1" class="layerpop1"
        style="width: 400px; height: 300px;">
        <input type="hidden" id="loginId" value="${sessionScope.loginId}">
        <article class="layerpop_area1">
        <div class="title1" style="width:100% !important;">좋아요리스트</div>
        <div class="tagModal-close1"><i class="fas fa-window-close fa-lg" onclick="popupClose1()"></i></div>
        
        <div class="content" style="" id="likelist">

        </div>
       
        </article>
    </div>
<!-- 좋아요리스트 모달창 종료 -->
   
<script>

function wrapWindowByMask1() {
    //화면의 높이와 너비를 구한다.
    var maskHeight = $(document).height(); 
    var maskWidth = $(window).width();

    //문서영역의 크기 
    console.log( "document 사이즈:"+ $(document).width() + "*" + $(document).height()); 
    //브라우저에서 문서가 보여지는 영역의 크기
    console.log( "window 사이즈:"+ $(window).width() + "*" + $(window).height());        

    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    $('#mask1').css({
        'width' : maskWidth,
        'height' : maskHeight
    });

    //애니메이션 효과
    //$('#mask').fadeIn(1000);      
    $('#mask1').fadeTo("slow", 0.5);
}

function popupOpen1() {
    $('.layerpop1').css("position", "absolute");
    //영역 가운에데 레이어를 뛰우기 위해 위치 계산 
    $('.layerpop1').css("top",(($(window).height() - $('.layerpop1').outerHeight()) / 3) + $(window).scrollTop());
    $('.layerpop1').css("left",(($(window).width() - $('.layerpop1').outerWidth()) / 2) + $(window).scrollLeft());
    $('.layerpop1').draggable();
    $('#layerbox1').show();
}

function popupClose1() {
    $('#layerbox1').hide();
    $('#mask1').hide();
}

function openLikeList(code) {
    popupOpen1(); //레이어 팝업창 오픈 
    wrapWindowByMask1(); //화면 마스크 효과 
    var loginId = '<%=(String)session.getAttribute("loginId")%>';
    var output = "";
    $.ajax({
   		url : "likelist",
   		type : "post",
   		data : {"code" : code},
   		dataType : "json",
   		async : false,
   		success : function(likelist){
   			console.log(likelist);
   			if(likelist == ""){
   				output += "<p style='text-align:center; font-size:20px;'>첫번째로 좋아요를 눌러보세요!</p>";
   			}else{
	   			for(var i in likelist){
	   				output += "<p style='text-align:center;' onclick='moveInfo(\""+likelist[i].mid+"\")'><span><img src='"+likelist[i].mprofile+"'class='img-radius img-30 align-top m-r-15' style='width:30px; height:30px;'></span>";
	   				output += "<span style='font-size:20px;'>"+likelist[i].mnick+"</span></p><hr>";
	   			}   				
   			}
   		}
   	});
    $("#likelist").html(output);
}

function moveInfo(mid){
	var loginId = $("#loginId").val();
	if(mid == loginId){
		location.href="moveMyBoardList";
	}else{
		location.href="moveUserBoardList?userId="+mid;				
	}
}



</script>