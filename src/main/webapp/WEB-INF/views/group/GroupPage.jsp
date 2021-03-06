<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

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
    
    <!-- Favicon icon -->
    <link rel="icon" href=""${pageContext.request.contextPath}/resources/assets/images/title_icon.png"" type="image/x-icon">
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
    <script src="https://kit.fontawesome.com/f3520ad06d.js" crossorigin="anonymous"></script>
    
    
    <!-- elen -->
       <style>
      html,
      body {
        position: relative;
        height: 100%;
      }

      body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
      }

      body {
        background: #000;
      }

      .swiper-container {
        width: 100%;
        height: 100%;
        position:relative;
        z-index:1;
      }

      .swiper-slide {
        overflow: hidden;
      }
      /* 추가 css */
  .commMain:hover{
  	background-color : white;
  }
  .commBtn{
  	font-size:12px;
  	background-color:white;
  	border:none;
  	color:#555;
  }
  .commBtn:hover{
  	cursor:pointer;
  }
  .commBox{
  	box-shadow: none !important;
  	border-radius: 0px;
  	margin-bottom: 0px;
  	border-top: 1px solid rgba(0, 0, 0, .125);
  
  }
  table td{
  	padding-bottom:0px !important;
  	padding-top:10px !important;
  }
  .commreply{
      	font-size:15px;
      	border-radius:5px;
       	overflow:scroll;
       	-ms-overflow-style: none;
      }
	  .commreply::-webkit-scrollbar { 
 		width: 0 !important;
  		display: none; 
	  }
    </style>
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
    
   <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
  <script src="${pageContext.request.contextPath}/resources/elen/js/jquery.min.js"></script>
   


</head>

<body>
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
            <%@include file="../include/Topbar.jsp" %>

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <%@ include file="../include/Sidebar.jsp" %>
                    		

									<div id="colorlib-page">		
										<div id="colorlib-main">
											
											<section class="ftco-section" style="padding:0px;">
											
									    	<div class="container" style="margin-top:40px;">
									    		<div class="row">
									    		<!-- 타임라인 시작 -->
									    			<div class="col-lg-8">
									    				<div class="row">
									    		<div class="col-md-12 groupHeader"
													style="position: relative; margin-bottom:10px;">
													
													<div class="author mb-4 d-flex align-items-center"
														style="margin-top: 28px; margin-bottom: 0px;">
														<img class="img-radius mCS_img_loaded "
															src="${pageContext.request.contextPath}/resources/uploadImg/groupProfile/${group.gprofile}"
															alt="User-Profile-Image"
															style="width: 150px; height: 150px; margin: 15px;">
														<div class="ml-3 info" style="height: 130px;">
															<span style="font-size: 20px; font-weight: bold; color: #333333;">${group.gname }</span>
															<p style="font-size: 14px; color: #4d4d4d;">${group.ginfo }</p>
														
														</div>

													</div>
													<div
														style="position: absolute; top: 10px; right: 15px; width: 20px; height: auto;">
														<nav>
															<ul id="group_ul">
																<li class="dropdown_group2"
																	style="display: inline-block;">
																	<div class="dropdown-menu_group2">
																		<i class="fas fa-ellipsis-v"></i>
																	</div>
																	<div class="dropdown-content_group2">
																	<c:choose>
				                                                      <c:when test="${group.gmanager == sessionScope.loginId }">
				                                                      	 <a href="moveBoardWriteForm?gcode=${group.gcode}">글쓰기</a>
				                                                         <a href="moveGroupProfileModifyForm?gcode=${group.gcode}">수정하기</a>
				                                                         <a href="#" onclick="deleteGroup('${group.gcode}'); return false;">삭제하기</a>
				                                                      </c:when>
				                                                      <c:otherwise>
				                                                         <c:if test="${groupUser == sessionScope.loginId}">
				                                                         <a href="moveBoardWriteForm?gcode=${group.gcode}">글쓰기</a>
				                                                         </c:if>
				                                                         <a href="#Redirect" onclick="javascript:report('${group.gcode}');">신고하기</a>
				                                                      </c:otherwise>
				                                                   </c:choose>
																	</div>

																</li>
															</ul>
														</nav>
													</div>
													<div class="col-md-12 groupMenu" style="position: absolute">
														<button class="groupBtn2" onclick="showTimeLine()">타임라인</button>
														<button class="groupBtn2" onclick="getGmemList('${group.gcode}')">멤버 ( ${group.gusernum } )</button>
														
														<!-- 이미 가입이 되어있다면 탈퇴하기 버튼 실행 -->
														<c:choose>
															<c:when test="${groupUser == null }">
																<button class="groupBtn2" onclick="joinGroup('${group.gcode}','${group.gname }')">가입하기</button>
															</c:when>
															<c:otherwise>
																<button class="groupBtn2" onclick="signoutGroup('${group.gcode}','${group.gname }','${group.gmanager }')">탈퇴하기</button>
															</c:otherwise>
														</c:choose>
													</div>
												</div>
												</div>
												</div>
												</div>
												</div>
											</section>
											<section class="ftco-section" style="padding:0px;" id="groupMemberArea">
										<!-- 친구목록 -->
										
										</section>
										<section class="ftco-section" style="padding:0px;" id="groupBoardArea">
										<c:if test="${groupUser != sessionScope.loginId}">
											<div class="col-lg-8" style="text-align:center;">
												<h6 style="color:#808080;">그룹에 가입해야 그룹의 게시물을 볼 수 있습니다</h6>											
											</div>
										</c:if>
										<c:if test="${groupUser == sessionScope.loginId}">
										<c:forEach items="${boardList}" var="boardList">
										<div class="container" style="margin-top: 8px;">
										<div class="row">
											<!-- 타임라인 시작 -->
											<div class="col-lg-8" style="border-bottom:1px solid #e8e8e8;">
												<div class="row">
													<div class="col-md-12" style="background-color:white; padding:0px;">
														<div class="blog-entry ftco-animate"
															style="margin-bottom: 0px; margin-top\: 30px;">
															<div class="author mb-4 d-flex align-items-center" style="margin:20px !important;">
																<!-- 프로필이미지/닉네임 -->
																<c:choose>
																	<c:when test="${boardList.bgcode == null }">
																	<a href="moveUserBoardList?userId=${boardList.bmid}&loginId=${sessionScope.loginId}" class="img"
																		style="background-image: url(${boardList.mprofile});"></a>
																		<div class="ml-3 info">
																		<h3>
																			<a href="moveUserBoardList?userId=${boardList.bmid}&loginId=${sessionScope.loginId}" style="font-size: 25px; text-decoration:none;">${boardList.bmnick}</a>
																			<span style="font-size:12px; margin-left:15px;">${boardList.bdate}</span>
																		</h3>
																	</div>
																	</c:when>
																	<c:otherwise>
																	<a href="moveGroupPage?gcode=${boardList.bgcode}" class="img"
																		style="background-image: url(${pageContext.request.contextPath}/resources/uploadImg/groupProfile/${boardList.gprofile});"></a>
																		<div class="ml-3 info">
																			<h3>
																				<a href="moveGroupPage?gcode=${boardList.bgcode}" style="font-size: 25px; text-decoration:none;">${boardList.bgname}</a><span style="font-size:13px;">&nbsp;&nbsp;&nbsp;&nbsp;그룹의 게시물</span>
																				<span style="font-size:12px; margin-left:15px;">${boardList.bdate}</span>
																			</h3>
																			<div style="height:35px; line-height:35px;">
																			<i class="fas fa-user fa-lg"></i>
																			<a href="moveUserBoardList?userId=${boardList.bmid}&loginId=${sessionScope.loginId}" style="font-size: 18px; margin-top:10px; color:black;"
																			style="font-size:20px; color:#555; text-decoration:none;" >${boardList.bmnick}</a>
																			</div>
																		</div>
																	</c:otherwise>
																</c:choose>
																<!-- 삼떙이 -->
																<div
																	style="position: absolute; top: 40px; right: 30px; width: 90px; height: auto;">
																	<nav>
																		<ul id="group_ul">
																			<li class="dropdown_group"
																				style="display: inline-block;">
																				<div class="dropdown-menu_group">
																					<i class="fas fa-ellipsis-v fa-lg"></i>
																				</div>
																				<div class="dropdown-content_group">
																					<a
																						href="moveBoardModifyForm?bcode=${boardList.bcode}">수정하기</a>
																					<a href="boardDelete?bcode=${boardList.bcode }">삭제하기</a> 
																					<a href="#Redirect" onclick="javascript:report('${boardList.bcode}');">신고하기</a>
																				</div>
																			</li>
																		</ul>
																	</nav>
																</div>
															</div>
															<!-- 게시물 -->
															<div
																style="-swiper-navigation-color: #fff; - -swiper-pagination-color: #fff; width: 100%;" 
																class="swiper-container mySwiper">
																<div class="swiper-wrapper">
																	<c:forEach items="${boardList.photo}" var="photo">
																		<div class="swiper-slide">
																			<div class="swiper-zoom-container">
																				<c:choose>
																				<c:when test="${fn:contains(photo,'.mp4')}">
																					<video src="${pageContext.request.contextPath}/resources/uploadImg/${photo}" style="width: 100%; height: 600px;" controls autoplay="autoplay">
																					</video>
																				</c:when>
																				<c:otherwise>
																					<img
																						style="width: 100%; height: 600px; object-fit: cover;"
																						src="${pageContext.request.contextPath}/resources/uploadImg/${photo}" />
																				</c:otherwise>
																				</c:choose>
																			</div>
																		</div>
																	</c:forEach>
																</div>
																<div class="swiper-button-next" style="color:#C0D093;"></div>
																<div class="swiper-button-prev" style="color:#C0D093;"></div>
																
															</div>

															<!-- Swiper JS -->
															<script
																src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

															<!-- Initialize Swiper -->
															<script>
																var swiper = new Swiper(
																		".mySwiper",
																		{
																			zoom : true,
																			navigation : {
																				nextEl : ".swiper-button-next",
																				prevEl : ".swiper-button-prev",
																			},
																			pagination : {
																				el : ".swiper-pagination",
																				clickable : true,
																			},
																		});
															</script>
															<div class="text pt-2 mt-3" style="margin:20px; margin-bottom:0px;">
																<p style="font-size: 20px;">${boardList.bcontent}</p>
																<!-- 해시태그 -->
				                                                <ul id="tag-list">
				                                                <c:forEach items="${boardList.taglist}" var="tag" varStatus="i">
				                                                   <li class='tag-item' onclick="moveHashTag('${tag}')"><span>${tag}</span></li>
				                                                </c:forEach>
				                                                  </ul>
																<div class="meta-wrap d-md-flex align-items-center">
																	<div class="half order-md-last text-md-right">
																		<p class="meta" style="font-size: 20px;">
																			<i class="${boardList.likemodify}"
																				onclick="boardlike('${boardList.bcode}')"
																				id="boardlike${boardList.bcode}"
																				style="color: black;"></i><span
																				id="updateboardlikecount${boardList.bcode}" onclick="javascript:likelist('${boardList.bcode}')">${boardList.likecount}</span>
																			<i class="far fa-comment" style="color: black;"
																				id="boardcomment${boardList.bcode}"
																				onclick="showCommList('${boardList.bcode}')"></i><span
																				id="updatecommcount${boardList.bcode}">${boardList.commcount}</span>
																		</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!-- 타임라인 종료 -->
											<!-- 댓글창 시작 -->
											<div class="col-xl-8 col-md-4"
												style="padding: 0px; display: none; margin-top:0px;"
												id="showComm${boardList.bcode}">
												<div class="card table-card commBox">
													<div class="card-block" style="padding: 0px;">
														<div class="table-responsive" style="padding: 0px;">
															<form onsubmit="return comm(this);"
																id="formfix${boardList.bcode}">
																<input type="hidden" name="cbcode"
																	value="${boardList.bcode}"
																	id="fixnamecode${boardList.bcode}"> <input
																	type="hidden" name="cmid"
																	value="${sessionScope.loginId}"
																	id="fixnamemid${boardList.bcode}">
																<table class="table table-hover without-header"
																	style="margin-bottom: 0px; width:100%;">
																	<thead>
																		<tr>
																			<td class="commMain" style="margin-left: auto; margin-right: auto;">
																				<div class="d-inline-block align-middle"
																					style="font-size: 15px;">
																					<img src="${sessionScope.loginPf}" alt="user image"
																						class="img-radius img-30 align-top m-r-15"
																						style="width: 30px; height: 30px;"> <span
																						style="font-size: 15px;">${sessionScope.loginNick}</span>
																					<p
																						style="font-size: 5px; text-align: right; margin: 0px;">&nbsp;</p>
																					<div class="d-inline-block">
																						<textarea class='commreply' rows=1 cols=85
																							name="ccomment"
																							id="textarea${boardList.bcode}"
																							onkeyup="javascript:textlimit(this)"></textarea>
																						<p style="text-align: right;">
																							<span style="float: left;" id="replying${boardList.bcode}"></span>
																							<button class="commBtn">댓글달기</button>
																						</p>
																					</div>

																				</div>
																			</td>
																		</tr>
																	</thead>
																	<tbody id="commreplyArea${boardList.bcode}">

																	</tbody>
																</table>
															</form>
														</div>
													</div>
												</div>
											</div>
											<!-- 댓글창 종료 -->
										</div>
									</div>
											</c:forEach>
								</c:if>
								</section>
								<br><br><br><br><br><br><br><br><br><br><br><br>
											<%@ include file="../include/ReportModal.jsp"%>
											<%@ include file="../include/likelist.jsp" %>
												<!-- 타임라인 종료 -->
										</div>

						</div>
						<!-- END COLORLIB-MAIN -->
					</div>
					<!-- END COLORLIB-PAGE -->
	     

    
								  <script src="${pageContext.request.contextPath}/resources/elen/js/jquery-migrate-3.0.1.min.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/popper.min.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/bootstrap.min.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/jquery.easing.1.3.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/jquery.waypoints.min.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/jquery.stellar.min.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/owl.carousel.min.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/jquery.magnific-popup.min.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/aos.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/jquery.animateNumber.min.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/bootstrap-datepicker.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/jquery.timepicker.min.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/scrollax.min.js"></script>
								  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/google-map.js"></script>
								  <script src="${pageContext.request.contextPath}/resources/elen/js/main.js"></script>
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
<script type="text/javascript">
//그룹 멤버 가입
function joinGroup(gcode,joinGname){
	var joinUser = "${sessionScope.loginId}";

	var joinCheck = confirm("["+joinGname+"] 그룹에 가입하시겠습니까?");
			 if(joinCheck){
					location.href="joinGroup?gcode="+gcode+"&userId="+joinUser;
			 }
}

//그룹 멤버 탈퇴
function signoutGroup(gcode,gname,gmanager){
	var userId = "${sessionScope.loginId}";
	var userNum = ${group.gusernum };
	
	//관리자일 경우
	if(userId == gmanager){
		//멤버가 나 혼자일때
		if(userNum == 1){
			var deleteCheck2 = confirm("그룹을 삭제하시겠습니까?");
			if(deleteCheck2){
				location.href="deleteGroup?gcode="+gcode;
			}
		//다른 멤버가 있을때	
		}else{
			var deleteCheck = confirm("["+gname+"] 그룹의 관리자권한을 양도해주세요. ");
			if(deleteCheck){
				
			}else{
				var deleteCheck2 = confirm("그룹을 삭제하시겠습니까?");
				if(deleteCheck2){
					//그룹 삭제 처리
					location.href="deleteGroup?gcode="+gcode;
				}
			}
		}
	}else{
		//일반 멤버
		var deleteCheck = confirm("["+gname+"] 그룹을 탈퇴하시겠습니까? ");
		if(deleteCheck){
			location.href="signOutGroup?gcode="+gcode+"&userId="+userId;
		}
	}
}

//그룹 멤버목록
function getGmemList(gcode){
	$("#groupBoardArea").css("display","none");
	$("#groupMemberArea").css("display","");
	
	var output = "";
	var loginId = "${sessionScope.loginId}";
	var loginNick = "${sessionScope.loginNick}";
	var gmanager = "${group.gmanager}";
	$("#groupBoardArea").css("display","none");
	
	$.ajax({
		type : "post",
		url : "getGroupMemList",
		data : { "gcode" : gcode,
				 "loginId" : loginId },
		async : false,
		dataType : "json",
		success : function(memList){
			console.log(memList);
			for(var i in memList){
				output += "<div class='container'>";
				output += "<div class='row'>";
				output += "<div class='col-lg-8'>";
				output += "<div class='row'>";
				output += "<div class='col-md-12 groupHeader' style='position:relative; border: 1px solid rgba(0,0,0,.125); height:70px; margin-bottom:10px;'>";
				output += "<div class='author mb-2 d-flex align-items-center' style='margin-bottom:0px;' >";
				output += "<img class='img-radius mCS_img_loaded ' src='"+memList[i].mprofile;
				output += "' alt='User-Profile-Image' style='width:50px !important; height:50px; object-fit:cover; margin:10px; vertical-align: middle;'>";
				output += "<div class='info' style='height:70px; width:470px;'>";
				
				//관리자인지 확인
				if(memList[i].mid == gmanager){
					output += "<a href='moveUserBoardList?userId="+memList[i].mid+"&loginId="+loginId+"'><span style='font-size:18px; font-weight:bold; color:#333333; line-height: 70px;'>"+memList[i].mnick+" <i class='fas fa-crown'></i> </span></a>";
				}else{
					output += "<a href='moveUserBoardList?userId="+memList[i].mid+"&loginId="+loginId+"'><span style='font-size:18px; font-weight:bold; color:#333333; line-height: 70px;'>"+memList[i].mnick+"</span></a>";
				}
				
				output += "</div>";
				
				//본인인지 확인
				if(memList[i].mid == loginId){
					
				}else{
					
					//관리자일 경우 
					if(gmanager == loginId){
						output += "<button class='mofiBtn' style=' margin-top:auto; margin-bottom:auto; margin-left:8px; width:80px;' onclick='giveManager(\""+memList[i].mid+"\",\""+memList[i].mnick+"\")'> <i class='fas fa-crown fa-lg'></i> </button>";
						output += "<button class='mofiBtn' style=' margin-top:auto; margin-bottom:auto; margin-left:8px; width:80px;' onclick='signOutUser(\""+memList[i].mid+"\",\""+memList[i].mnick+"\")'> <i class='fas fa-user-slash'></i></button>";
					}
					//친구인지 확인
					if(memList[i].friendcheck == 0){
					}else{
						output += "<button class='mofiBtn' style=' margin-top:auto; margin-bottom:auto; margin-left:100px; width:80px;' onclick='moveChatting(\""+memList[i].mnick+"\",\""+loginNick+"\")'><i class='fas fa-comments'></i></i></button>";
						output += "<button class='mofiBtn' style=' margin-top:auto; margin-bottom:auto; margin-left:8px; width:80px; background-color:#e8e8e8;' onclick='friendDelete(\""+memList[i].mid+"\",\""+memList[i].mnick+"\")'><i class='fas fa-user-times'></i></button>";	
					}
					
				}
				output += "</div>";
				output += "</div>";
				output += "</div>";
				output += "</div>";
				output += "</div>";
				output += "</div>";
			}
		}
	});
	$("#groupMemberArea").html(output);
}

function showTimeLine(){
	$("#groupMemberArea").css("display","none");
	$("#groupBoardArea").css("display","");
}


function friendRequest(friendId,friendNick){
	var loginId = "${sessionScope.loginId}";
	var friendCheck = confirm("["+friendNick+"]님에게 친구신청을 보냅니다.");
	if(friendCheck){
		$.ajax({
			type : "get",
			url : "friendRequest",  
			data : { "friendId" : friendId,
					 "loginId" : loginId },
			async : false,
			success : function(result){
				
			}
			
		});
		getGmemList('${group.gcode}');
		
	}
}

function friendDelete(friendId,friendNick){
	var loginId = "${sessionScope.loginId}";
	var friendCheck = confirm("["+friendNick+"]님과 친구를 끊습니다.");
	if(friendCheck){
		$.ajax({
			type : "get",
			url : "friendDelete",
			data : { "friendId" : friendId,
					 "loginId" : loginId },
			async : false,
			success : function(result){
				
			}
			
		});
		getGmemList('${group.gcode}');
	}
}

//관리자 양도 (관리자)
function giveManager(userId,userNick){
	var loginId = "${sessionScope.loginId}";
	var groupCode = "${group.gcode}";
	var giveCheck = confirm("["+userNick+"]님께 관리자를 양도하시겠습니까?");
	if(giveCheck){
		location.href="giveGroupManager?gcode="+groupCode+"&userId="+userId+"&loginId="+loginId;
	}
}

//멤버 강제 탈퇴 (관리자)
function signOutUser(userId,userNick){
	var groupCode = "${group.gcode}";
	var signOutCheck = confirm("["+userNick+"]님를 탈퇴시키겠습니까?");
	if(signOutCheck){
		$.ajax({
			type : "get",
			url : "signOutGroupUser",
			data : { "gcode" : groupCode,
					 "userId" : userId },
			async : false,
			success : function(result){
				
			}
			
		});
		getGmemList('${group.gcode}');
	}
}
	
function textlimit(obj){
	var text = $(obj).val();
	if(text.length > 2000){
		alert("글의 제한수는 2000자 입니다.");
		$(obj).val(text.substring(0, 2000));
	}
}	
	
function showCommList(bcode) {
	console.log(bcode);
	if ($("#showComm" + bcode).css("display") == "none") {
		$("#showComm" + bcode).show();
		$("#boardcomment" + bcode).attr("class", "fas fa-comment");
		var output = "";
		$.ajax({
					type : "POST",
					url : "commList",
					data : {"bcode" : bcode},
					dataType : "json",
					async : false,
					success : function(commList) {
						for ( var i in commList) {
							output += "<tr><td class='commMain'><div class='d-inline-block align-middle' style='font-size:15px;'>";
							output += "<img src='"+commList[i].mprofile+"' alt='user image' class='img-radius img-30 align-top m-r-15' style='width:30px; height:30px;'>";
							output += "<span style='font-size:15px;'>"+commList[i].cmnick+"</span><span style='font-size:5px; text-align:right; margin-left:30px;'>"+commList[i].cdate+"</span>";
							output += "<div class='d-inline-block'>";
							output += "<textarea class='commreply' rows=2 cols=85 style='overflow=hidden; border:none; margin-top:8px;' disabled>"+commList[i].ccomment + "</textarea>";
							output += "<p style='text-align:right;'>";
							output += "<i class='"+commList[i].likemodify+"' onclick='boardlike(\""+commList[i].ccode+"\")' id='commlike"+commList[i].ccode+"' style='color:black;'></i><span>&nbsp;</span><span id='updatecommlikecount"+commList[i].ccode+"'>"+commList[i].likecount + "</span>";
							output += "<span>&nbsp;</span><span class='commBtn' style='float:left;' onclick='showReply(\""+commList[i].ccode+"\",\""+commList[i].cbcode+"\")'><span id='replycount"+commList[i].ccode+"'>"+commList[i].replycount + "</span>";
							output += "<span>개 답글보기</span><span>&nbsp;&nbsp;</span></span>";
							output += "<span class='commBtn' onclick='replyRegist(\""+commList[i].ccode+"\",\""+commList[i].cbcode+"\",\""+commList[i].cmnick+"\")'>답글달기</span>";
							output += "</p><div id='showReply"+commList[i].ccode+"' style='display:none;'></div></div></div></td></tr>";

						}
					}
				});
		$("#commreplyArea" + bcode).html(output);
	} else {
		$("#showComm" + bcode).hide();
		$("#boardcomment" + bcode).attr("class", "far fa-comment");
	}

};

function showReply(ccode, cbcode) {
	if ($("#showReply" + ccode).css("display") == "none") {
		$("#showReply" + ccode).show();
		console.log("ccode : " + ccode);
		console.log("cbcode : " + cbcode);
		var output = "";
		$.ajax({
			type : "post",
			url : "replyList",
			data : {"ccode" : ccode, "cbcode" : cbcode},
			dataType : "json",
			async : false,
			success : function(replyList) {
				if (replyList != null) {
					for ( var j in replyList) {
						output += "<tr style='width:100%'><td class='commMain' style='padding-left:20px;'><div style='display:inline-block;'><i class='fas fa-reply fa-rotate-180 fa-2x' style=''></i></div><div class='d-inline-block align-middle' style='font-size:15px; width:580px; margin-top:10px; margin-left:30px;'>";
						output += "<img src='"+replyList[j].mprofile+"' alt='user image' class='img-radius img-30 align-top m-r-15' style='width:30px; height:30px;'>";
						output += "<span style='font-size:15px;'>"+replyList[j].remnick+"</span><span style='font-size:5px; text-align:right; margin-left:30px;'>"+replyList[j].redate+"</span>";
						output += "<div class='d-inline-block'>";
						output += "<textarea class='commreply' rows=2 cols=75 style='overflow=hidden; border:none; margin-top:8px;' disabled>"+replyList[j].recomment+"</textarea>";
						output += "<p style='text-align:right;'>";
						output += "<i class='"+replyList[j].likemodify+"' onclick='boardlike(\""+replyList[j].recode+"\")' id='replylike"+replyList[j].recode+"' style='color:black;'></i><span>&nbsp;</span><span id='updatereplylikecount"+replyList[j].recode+"'>"+ replyList[j].likecount+"</span>";
						output += "</p></div></div></td></tr>";
					}
				}
			}
		});
		$("#showReply" + ccode).html(output);
	} else {
		$("#showReply" + ccode).hide();
	}
};

function comm(obj) {
	console.log(obj);
		$.ajax({
			url : "commRegist",
			type : "post",
			data : $(obj).serialize(),
			async : false,
			success : function(bcode) {
				console.log(bcode);
				if(bcode.substring(0, 1) == "B" || bcode.substring(0, 2) == "GB"){
					$("#textarea"+ bcode).val("");
					var pluscount = Number($("#updatecommcount" + bcode).html()) + 1;
					$("#updatecommcount" + bcode).html(pluscount);
					console.log("commRegistcode : " + bcode);
					$("#showComm" + bcode).hide();
					showCommList(bcode);
				}else{
					alert(bcode);					
				}
			}
		});
	return false;
}

function replyRegist(ccode, cbcode, cmnick) {
	console.log(ccode + cbcode);
	$("#textarea" + cbcode).focus();
	$("#textarea" + cbcode).attr("name", "recomment");
	$("#textarea" + cbcode).val("@" + cmnick + " ");
	$("#fixnamecode" + cbcode).attr("name", "rebcode");
	$("#fixnamemid" + cbcode).attr("name", "remid");
	$("#formfix" + cbcode).attr("onsubmit", "return reply(this);");
	$("#reccodeA" + cbcode).remove();
	$("#formfix" + cbcode).append("<input type='hidden' name='reccode' value='"+ccode+"' id='reccodeA"+cbcode+"'>");
	$("#replying" + cbcode).html(cmnick + "님에게 답글작성중.."+"<i class='fas fa-times' onclick='replyingdelete(\"" + cbcode + "\")'></i>");
	console.log(ccode + cbcode);
};

function replyingdelete(cbcode) {
	$("#textarea" + cbcode).attr("name", "ccomment");
	$("#fixnamecode" + cbcode).attr("name", "cbcode");
	$("#fixnamemid" + cbcode).attr("name", "cmid");
	$("#formfix" + cbcode).attr("onsubmit", "return comm(this);");
	$("#reccodeA" + cbcode).remove();
	$("#textarea" + cbcode).val("");
	$("#replying" + cbcode).html("");
}

function reply(obj) {
	console.log(obj);
	$.ajax({
		url : "replyRegist",
		type : "post",
		data : $(obj).serialize(),
		async : false,
		success : function(rdto2) {
			if(rdto2.rebcode.substring(0, 1) == "B" || rdto2.rebcode.substring(0, 2) == "GB"){
				var pluscount = Number($("#replycount" + rdto2.rebcode).html()) + 1;
				$("#replycount" + rdto2.rebcode).html(pluscount);
				console.log("replyRegistcode : " + rdto2.reccode);
				$("#showComm" + rdto2.rebcode).hide();
				showCommList(rdto2.rebcode);
				$("#showReply" + rdto2.reccode).hide();
				showReply(rdto2.reccode, rdto2.rebcode);					
				replyingdelete(rdto2.rebcode);
			}else{
				alert(rdto2.rebcode);
			}
		}
	});

	return false;
}

function boardlike(code) {
	console.log("codename : " + code.substring(0, 1));
	$.ajax({
		url : "boardlike",
		type : "post",
		data : {"licode" : code},
		async : false,
		success : function(result) {
			var likeid = "#boardlike";
			var likecountid = "#updateboardlikecount";
			if (code.substring(0, 1) == "B" || code.substring(0, 2) == "GB") {
				likeid = "#boardlike";
				likecountid = "#updateboardlikecount";
			} else if (code.substring(0, 1) == "C") {
				likeid = "#commlike";
				likecountid = "#updatecommlikecount";
			} else if (code.substring(0, 1) == "R") {
				likeid = "#replylike";
				likecountid = "#updatereplylikecount";
			}

			if (result == "add") {
				$(likeid + code).attr("class", "fas fa-heart");
				var likecount = Number($(likecountid + code).html()) + 1;
				$(likecountid + code).html(likecount);
			} else if (result == "remove") {
				$(likeid + code).attr("class", "far fa-heart");
				var likecount = Number($(likecountid + code).html()) - 1;
				$(likecountid + code).html(likecount);
			}
		}
	});
};

function report(bcode){
    openReport(bcode);
 }
 
 function moveHashTag(tagname){
    var reTag = tagname.replace(/\#/g,'');
    var orderby = "like";
    location.href="moveTagBoardList?tagname="+reTag+"&orderby="+orderby;
 }
 
 function deleteGroup(gcode){
	   var deleteCheck = confirm(gcode + "그룹을 삭제하시겠습니까?");
	   if(deleteCheck == true){
	   location.href = "deleteGroupByAdmin?gcode=" + gcode;      
	   }
	}
 function likelist(code){
		openLikeList(code);
	}
 function moveChatting(friendNick, userNick){
		console.log('friendNick / userNick : ' + friendNick + ' / ' + userNick);
		location.href = 'moveChatting?friendNick=' + friendNick + '&loginNick=' + userNick;
	}
 
</script>


</html>
