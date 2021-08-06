<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    
    
    <!-- elen -->
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
	
	<style>
	.preBtn {
	    background-color: white;
	    border: 1px solid rgba(0,0,0,.125);
	    padding: 5px;
	    cursor: pointer;
	    font-weight: 500;
	    text-align: center;
	    line-height: 1.5;
	    border-radius: 30px;
	    width: 70px;
	    height: 35px;
	    margin: 4px;
	    font-size: 12px;
	    color: #808080;
	    width:40%;
	    height:50px;
	}
	.preBtn:hover{
	   background-color: #80A1C2;
	   color:white;
	}
	
	.boldFont{
		font-size:25px;
		font-weight: 800;
		color:#80A1C2;
	}
	</style>
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
    <div id="pcoded" class="pcoded" style="font-family: 'InfinitySans-RegularA1';">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            <%@include file="../include/Topbar.jsp" %>

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    
                    <%@ include file="../include/Sidebar.jsp" %>

					<div id="colorlib-page">		
						<div id="colorlib-main">
							<section class="ftco-section">
								<div class="container" >
									<div class="row" style="margin-bottom:5px; text-align:center;">
									</div>
									<div class="row">
									<div class="col-lg-8 formdiv" >
									<div class="row modifyForm">
									
									
                                		<div class="col-sm-12 m-b-10">
                                			<div class="form-group form-primary" style="border-bottom:3px solid #80A1C2;">
                                				<img class="img-fluid" src="${pageContext.request.contextPath}/resources/assets/images/logo_black.png" 
                           						style="margin-bottom:10px; height: 60px; width: auto;"/>
	                                			<span style="font-weight:bold; font-size:46px; color:black;">Premium</span>
	                                		</div>
	                                	</div>
	                                	
                                	<c:choose>
                                		<c:when test="${sessionScope.premium == 'NO' }">
	                                		<div class="col-sm-12 m-b-10" >
	                                			<div class="form-group form-primary" style="border-bottom:3px solid #80A1C2; text-align:center;">
		                                			<span style="color:#495057;">광고없이 즐기는 </span><span class="boldFont"><strong>SNS</strong></span><br>
		                                			<span class="boldFont"><strong>bod Priminum</strong></span><span style="color:#495057;">에 가입하시겠습니까? </span><br>
		                                			<p>프리미엄 서비스 금액 :1,500원</p><br>
		                                		</div>
		                                	</div>
		                                	<div class="col-sm-12 m-b-10">
		                                        <div class="form-group form-primary" style="text-align:center;">
		                                        	<button class="preBtn"  onclick="premiumPayment()">결제하기</button>
		                                        </div>
		                                    </div>
                                		</c:when>
                                		<c:otherwise>
                                			<div class="col-sm-12 m-b-10" >
	                                			<div class="form-group form-primary" style="border-bottom:3px solid #80A1C2; text-align:center;">
		                                			<span class="boldFont"><strong>bod Priminum</strong></span><span> 회원입니다 :)</span><br><br>
		                                		</div>
		                                	</div>
                                		</c:otherwise>
                                	</c:choose>
                                    
                                   
                                </div>
                                
									</div>
									<!-- 프로필 수정폼 종료 -->
									</div>
								</div>
							</section>
									    
						</div><!-- END COLORLIB-MAIN -->
					</div><!-- END COLORLIB-PAGE -->
	     

    
					<script src="${pageContext.request.contextPath}/resources/elen/js/jquery.min.js"></script>
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
	
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	
	<%@ include file="../include/samddang.jsp" %>
</body>
	<script>
	 

	 function premiumPayment(){
		 	//회원 정보
		 	var memId = "${member.mid}";
		 	var memName = "${member.mname}";
		 	var memTel = "${member.mphone}";
		 
			//가맹점 식별코드
			IMP.init('imp86465953');
			IMP.request_pay({
				pg : 'kakaopay',
	            pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : 'bod Premium' , //결제창에서 보여질 이름
			    amount : 1500, //실제 결제되는 가격
			    buyer_email : memId,
			    buyer_name : memName,
			    buyer_tel : memTel
			   
			}, function(rsp) {
				console.log(rsp);
			    if ( rsp.success ) {
			    	var msg = '환영합니다!';
			    	var checkResult = "OK"
			    } else {
			    	var checkResult = "NO"
			    	 var msg = '결제에 실패하였습니다.';
			         msg += '에러내용 : ' + rsp.error_msg;
			    }
			    alert(msg);
			    updatePremium(checkResult)
			});
		}
	 function updatePremium(checkResult){
		 console.log(checkResult);
		 if(checkResult == "OK"){
			 var memId = "${member.mid}";
			 console.log("ok확인");
			 location.href="premiumMember?loginId="+memId;
		       
		 }else{
			 
		 }
	 }
    </script>



</html>
