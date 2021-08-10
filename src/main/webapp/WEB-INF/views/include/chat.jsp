<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
<head>
<title>새로운 SNS의 시작, bod</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="Codedthemes" />
    <!-- Favicon icon -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/images/title_icon.png" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    
    
    <!-- elen.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/elen/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
   <title>Chating</title>
   <style>
      *{
         margin:0;
         padding:0;
      }
      .container{
         width: 500px;
         margin: 0 auto;
         padding: 25px
      }
      .container h1{
         text-align: left;
         padding: 5px 5px 5px 15px;
         color: #FFBB00;
         border-left: 3px solid #FFBB00;
         margin-bottom: 20px;
      }
      .chating{
         background-color: white;
         width: 110%;
         height: 500px;
         overflow: auto;
         padding:15px;
      }
      
      .chating .me{
         color: black;
         width:100%;
         font-size:16px;
         border-radius:20px;
         padding:8px;
         text-align:right;
      }
      .chating .others{
         color: black;
         width:100%;
         font-size:16px;
         border-radius:20px;
         padding:8px;
         text-align:left;
      }
      input{
         width: 100%;
         height: 40px;
         padding-left:10px;
         background-color:#E7EEF7;
         border:none;
         color:#777;
      }
      #sendBtn{
         width: 100%;
         height: 40px;
         text-align:center;
         border:none;
         background-color:#95AECB;
         color:white;
      }
      #sendBtn:hover{
         background-color:#80A1C2;
         cursor:pointer;
      }
      #titleBox{
         padding-left: 15px;
         height: 50px;
         line-height:50px;
         width: 110%;
         background-color:#80A1C2;
         color : white;
         font-size:30px;
         font-weight:600;
      }
      
      .chating::-webkit-scrollbar
      {
         width: 6px;
         background-color: white;
      }
      .chating::-webkit-scrollbar-thumb{
         border-radius: 5px;
         background-color: #D4E1F4;
      }
      .chating::-webkit-scrollbar-trak{
         background-color: white;
      }
   </style>
</head>

<script type="text/javascript">
   var ws;

   function wsOpen(){
      //웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
      ws = new WebSocket("ws://" + location.host + "/chating/"+$("#roomCode").val());
      wsEvt();
   }
   
   $(document).ready(function(){
      console.log("wsOpen()");
      wsOpen(); // 웹소켓 오픈
   });
      
   function wsEvt() {
      ws.onopen = function(data){
         //소켓이 열리면 동작
      }
      var frNick = $("#frNick").val();
      var roomCode = $("#roomCode").val();
      console.log("frNick : " + frNick);
      
      ws.onmessage = function(data) {
         //메시지를 받으면 동작
         var msg = data.data;
         console.log("data : " + data.data);         
         if(msg != null && msg.trim() != ''){
            var d = JSON.parse(msg);
            var userNick = d.userName;
            console.log("userNick : " + userNick);   
            var msg = d.msg;
            if(d.type == "userId"){
               var si = d.sessionId != null ? d.sessionId : "";
               if(si != ''){
                  $("#sessionId").val(si); 
               }
            }else if(d.type == "message"){
               if(d.sessionId == $("#sessionId").val()){
                  $("#chating").append("<p class='me'>" + d.msg + " <i class='fas fa-comment fa-flip-horizontal' style='color:#95AECB;'></i></p>");   
                  
                  $.ajax({
                     type : "post",
                     url : "saveMsg",
                     data : {"userNick" : userNick, "msg" : msg, "roomCode" : roomCode},
                     async : false,
                     success : function(result){
                        
                     }
                  });                  
               }else{
                  $("#chating").append("<p class='others'>" + frNick + " :" + d.msg + "</p>");
                  console.log("receptFrMsg");
                  console.log("frNick : " + frNick);
                  console.log("msg : " + msg);
                  
               }
                  
            }else{
               console.warn("unknown type!")
            }
         }
      }

      document.addEventListener("keypress", function(e){
         if(e.keyCode == 13){ //enter press
            send();
         }
      });
   }

   function send() {
      var loginNick = "${sessionScope.loginNick}";
      console.log("jsp 메시지 발송");//SocketHandler handleTextMessage로 이어짐
      var option ={
         type: "message",
         roomCode: $("#roomCode").val(),
         sessionId : $("#sessionId").val(),
         userName : loginNick,
         msg : $("#chatting").val()
      }      
      ws.send(JSON.stringify(option))
      $('#chatting').val("");
   }

</script>
<body>

 <!-- Pre-loader start -->
    <div class="theme-loader">
      <div class="loader-track">
         <div class="preloader-wrapper">
            <div class="spinner-layer spinner-blue">
               <div class="circle-clipper left">
                  <div class="circle"></div>
               </div>
               <div class="gap-patch">
                  <div class="circle"></div>
               </div>
               <div class="circle-clipper right">
                  <div class="circle"></div>
               </div>
            </div>
            <div class="spinner-layer spinner-red">
               <div class="circle-clipper left">
                  <div class="circle"></div>
               </div>
               <div class="gap-patch">
                  <div class="circle"></div>
               </div>
               <div class="circle-clipper right">
                  <div class="circle"></div>
               </div>
            </div>

            <div class="spinner-layer spinner-yellow">
               <div class="circle-clipper left">
                  <div class="circle"></div>
               </div>
               <div class="gap-patch">
                  <div class="circle"></div>
               </div>
               <div class="circle-clipper right">
                  <div class="circle"></div>
               </div>
            </div>

            <div class="spinner-layer spinner-green">
               <div class="circle-clipper left">
                  <div class="circle"></div>
               </div>
               <div class="gap-patch">
                  <div class="circle"></div>
               </div>
               <div class="circle-clipper right">
                  <div class="circle"></div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Pre-loader end -->
   <div id="pcoded" class="pcoded">
      <div class="pcoded-overlay-box"></div>
      <div class="pcoded-container navbar-wrapper">
         <%@include file="../include/Topbar.jsp"%>

         <div class="pcoded-main-container">
            <div class="pcoded-wrapper">
               <%@ include file="../include/Sidebar.jsp"%>



   <div id="container" class="container">
      <div id="titleBox">${friendNick}</div>
      <input type="hidden" id="sessionId" value="">
      <input type="text" id="roomCode" value="${roomCode}">
      <input type="hidden" id="frNick" value="${friendNick}">
      <div id="chating" class="chating">
      <c:forEach items="${chattingList}" var="chattingList">      
      <c:choose>
      <c:when test="${chattingList.chnickname == sessionScope.loginNick}">
            <p class='me'>  ${chattingList.chchatting } <i class='fas fa-comment fa-flip-horizontal' style='color:#95AECB;'></i></p>
      </c:when>
      <c:otherwise>
            <p class='others'> <i class="far fa-comment"></i> ${chattingList.chnickname } : ${chattingList.chchatting }</p>
      </c:otherwise>
      </c:choose>
      </c:forEach>
      </div>
      
      
      <div id="yourMsg" style=" width:110%; background-color:white; ">
         <table class="inputTable" style="width:100%;">
            <tr id="sendBox">
               <th><input id="chatting" placeholder="보내실 메시지를 입력하세요." ></th>
               <td><button onclick="send()" id="sendBtn">보내기</button></td>
            </tr>
         </table>
      </div>
   </div>
   
            </div>
         </div>
      </div>
   </div>
   
     <!-- Required Jquery -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="${pageContext.request.contextPath}/resources/assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/pcoded.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/script.js "></script>
    
   <%@ include file="../include/samddang.jsp" %>         
</body>
</html>