<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>beginning of a day</title>
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

      <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/images/logo_icon.png" type="image/x-icon">
      <!-- Google font-->
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      <!-- Required Fremwork -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap/css/bootstrap.min.css">
      <!-- waves.css -->
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
      <!-- themify-icons line icon -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/icon/themify-icons/themify-icons.css">
      <!-- ico font -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/icon/icofont/css/icofont.css">
      <!-- Font Awesome -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/icon/font-awesome/css/font-awesome.min.css">
      <!-- Style.css -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
 
 	  <!-- ?????? api -->
 	  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
  </head>

  <body themebg-pattern="theme1">
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

   <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                
                
                <!-- form -->
                    <!-- <form class="md-float-material form-material" action="memberjoin" method="post" enctype="multipart/form-data"> -->
                    
                        <div class="text-center">
                            <a href="/controller" ><img src="${pageContext.request.contextPath}/resources/assets/images/logo_white.png" alt="logo_white.png"
                            style="height:80px; width:auto;"></a>
                        </div>
                        
                        <!-- ???????????? ?????? ?????? -->
                        <div class="auth-box card joinForm">
                            <div class="card-block">
                                <div class="row m-b-20">
                                    <div class="col-md-12">
                                        <h3 class="text-center txt-primary">????????????</h3>
                                    </div>
                                </div>
                                
                  <!-- form -->
                    <form class="md-float-material form-material" action="memberjoin" method="POST" enctype="multipart/form-data" >
                                <div class="row">
                                    <div class="col-sm-9">
                                		<div class="form-group form-primary">
                                    		<input type="text" name="mid" id="inputMid" class="form-control" onkeydown="checkSpacebar();" maxlength='30'>
                                   	 		<span class="form-bar"></span>
                                    		<label class="float-label">????????? ?????????</label>
                                    		<span style="font-size:12px" id="midCheckText">???????????? ??????????????????. (?????? 30??????)</span>
                                		</div>
                                	</div>
                                	<div class="col-sm-3">
                                		<button class="btnhv btn btn-primary btn-sm" onclick="midCheck(); return false;">????????????</button>                           
                                	</div>
                                	 <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="password" name="mpw" id="inputMPW" class="form-control" onkeyup="pwcheck();" onkeydown="checkSpacebar();" oninput="handleOnInput(this, 20)">
                                            <span class="form-bar"></span>
                                            <label class="float-label">????????????</label>
                                            <span style="font-size:12px" id="MPWcheckText"> *??????/?????? 4~20???</span>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="password" name="mpw2" id="MPWcheck" class="form-control" onkeyup="pwcheck();" onkeydown="checkSpacebar();" oninput="handleOnInput(this, 20)">
                                            <span class="form-bar"></span>
                                            <label class="float-label">???????????? ??????</label>
                                            <span style="font-size:12px" id="MPWcheckText2" >*??????/?????? 4~20??? </span>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group form-primary">
                                            <input type="text" name="mname" id="inputMNAME" class="form-control" onkeydown="checkSpacebar();"maxlength='5'>
                                            <span class="form-bar"></span>
                                            <label class="float-label">??????</label>
                                            <span style="font-size:12px" id="MNAMEcheckText" >????????? ??????????????????. </span>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="date" name="mbirth" class="form-control" style="font-size:14px;">
                                            <span class="form-bar"></span>
                                            <label class="float-label"></label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary" style="border-bottom: 1px solid #ccc; padding-top:12px; ">
                                            <span style="font-size:14px;">?????? &nbsp;&nbsp;&nbsp;</span>
                                            <label><input type="radio" name="mgender"  id="inputMGENDER" value="??????"/>?????? &nbsp;</label>
                                            <label><input type="radio" name="mgender" id="inputMGENDER"  value="??????"/>??????</label>
                                            
                                        </div>
                                    </div>
                                	 <div class="col-sm-12">
                                		<div class="form-group form-primary">
                                    		<input type="text" name="mphone" id="inputMPHONE" class="form-control" onkeydown="checkSpacebar();">
                                   	 		<span class="form-bar"></span>
                                    		<label class="float-label">???????????? (- ?????? ?????? )</label>
                                		</div>
                                	</div>
                                	
                                	
                                	<!-- ?????? api -->
                                	
                                    <div class="col-sm-8"> 
                                        <div class="form-group form-primary">
                                        	<span style="font-size:14px;">????????????</span>
                                           	<input type="text"  name="maddr" id="sample6_postcode" class="form-control" onkeydown="checkSpacebar();">
                                           	<span class="form-bar"></span>
                                    		<label class="float-label"></label>
                                    	</div>
                                    </div>
                                    <div class="col-sm-4">
                        					<input type="button" class="btnhv btn btn-primary btn-sm" style="margin-top:20px;"
                        					onclick="sample6_execDaumPostcode()" value="???????????? ??????"><br>
                        			</div>
                        			<div class="col-sm-12">
                        				<div class="form-group form-primary">
                        					<span style="font-size:14px;">??????</span>
                        					<input type="text"  name="maddr" id="sample6_address" class="form-control" onkeydown="checkSpacebar();">
                        					<span class="form-bar"></span>
                                    		<label class="float-label"></label>
										</div>	
									</div>		
									<div class="col-sm-6">
										<div class="form-group form-primary">
											<span style="font-size:14px;">????????????</span>
											<input type="text" name="maddr" id="sample6_detailAddress" class="form-control" onkeydown="checkSpacebar();">
                        					<span class="form-bar"></span>
                                    		<label class="float-label"></label>
										</div>
									</div>
									
									<div class="col-sm-6">
										<div class="form-group form-primary">
											<span style="font-size:14px;">????????????</span>
											<input type="text" name="maddr"id="sample6_extraAddress" class="form-control" onkeydown="checkSpacebar();">
                        					<span class="form-bar"></span>
                                    		<label class="float-label"></label>
                                    		
										</div>
									</div>
							
                                   <!-- ?????? api??? -->
                                   
                                   <div class="col-sm-4">
                                		<div class="form-group form-primary">
                                			<span style="font-size:14px;">?????????</span><br>
                                			<img class="img-radius mCS_img_loaded "  id="imgid" src="${pageContext.request.contextPath}/resources/uploadImg/userimg/userProfile.jpg" alt="User-Profile-Image"
											style="width:100px; height:100px; margin:15px;">
                                			
                                		</div>
                                	</div>
                                	<div class="col-sm-8">
                                		<div class="form-group form-primary " style="margin-top:20px;">
                                			<input type="text" name="mnick" id="inputMNICK" class="form-control" onkeydown="checkSpacebar();" maxlength='20'>
                                   	 		<span class="form-bar"></span>
                                    		<label class="float-label">?????????</label>
                                            <span style="font-size:12px" id="MNICKcheckText">???????????? ??????????????????. (?????? 20??????)</span>
                                		</div>
                                		<div class="form-group form-primary ">
                                			<label class="btn btn-primary btn-sm btnhv" for="input-file">????????? ?????? ??????</label>
                                    		<input type="file" name="mfile" id="input-file" class="form-control" style="font-size:14px;  display:none;">
                                			<input type="hidden" name="mprofile" id="mprofile" value="userProfile.jpg"> 
                                		</div>
                                	</div>	

                                </div>	
                               
                                <div class="row m-t-10">
                                    <div class="col-md-12">
                                        <button type="submit" onclick="check(); return false;" id="submit" disabled="disabled" class="btnhv btn btn-primary btn-md btn-block waves-effect text-center m-b-20 ">????????????</button>
                                    </div>
                                </div>
                              </form>
                            </div>
                        </div>
                        <!-- ???????????? ?????? ?????? -->
                    <!-- </form> -->
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
    
    
<!-- Required Jquery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery/jquery.min.js "></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-ui/jquery-ui.min.js "></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/popper.js/popper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/bootstrap/js/bootstrap.min.js "></script>
<!-- waves js -->
<script src="${pageContext.request.contextPath}/resources/assets/pages/waves/js/waves.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/common-pages.js"></script>

<!-- ?????? ?????? ??????  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/addJs/download.js"></script>

</body>



<script>
	//????????? ??????????????? js
	$(document).ready(function(){
		
		history.replaceState({}, null, location.pathname);
		
		//????????? ???
		var kid = "${id}";
		var kname = "${name}";
		var kgender = "${gender}";
		var kprofile = "${profile}";
		
		if(kid != ""){
			$("#inputMid").focus();
			$("#inputMid").val(kid);
			
			$("#inputMNAME").focus();
			$("#inputMNAME").val(kname);
			
			if(kgender == "??????"){
				$("input:radio[name='mgender']:radio[value='??????']").prop("checked", true); 
			}else if(kgender == "??????"){
				$("input:radio[name='mgender']:radio[value='??????']").prop("checked", true); 
			}
			
			$("#imgid").attr("src","${profile}");
			$("#mprofile").val("${profile}");
			
		}
	});
</script>



<script type="text/javascript">


/* ??????????????? ?????? */
function checkSpacebar() {
	var kcode = event.keyCode;
	if(kcode == 32) event.returnValue = false;
}

/* ????????? ?????? ?????? */
function midCheck() {
	
	var inputMid = $("#inputMid").val();
	/* ????????? ????????? ????????? ?????? */
	if(inputMid.length == 0) {
		$("#midCheckText").css("color" , "red").html("???????????? 1~30?????? ?????????.");
	} else {	
	$.ajax({
		type : "get",
		url : "moveIdCheck",
		data : { "inputMid" : inputMid },
		async : false,
		success : function(result){
			if(result =="OK"){
				$("#midCheckText").css("color" , "green").html("??????????????? ??????????????????.");
				$("#submit").removeAttr("disabled");
			} else {
				$("#midCheckText").css("color" , "red").html("?????????????????? ??????????????????.");
				$("#submit").attr("disabled", "disabled");
			}
		}
	});
	}
}

		/* ???????????? ????????? ?????? */
		function handleOnInput(el, maxlength) {
			  if(el.value.length > maxlength)  {
			    el.value = el.value.substr(0, maxlength);
			  }
			}
		
		

		
		var sel_file;
        $("#input-file").on("change",handleImgFileSelect);
        
        
		 /* ???????????? ?????? */		
		 function pwcheck() {
			 var inputMPW = $("#inputMPW").val();
             var MPWcheck = $("#MPWcheck").val();
             
             if(MPWcheck.length == 0 || MPWcheck == "") {
            	 $("#MPWcheckText2").html("*??????/?????? 4~20???");
             } else if(inputMPW != MPWcheck) {
             	$("#MPWcheckText2").css("color" , "red").html("??????????????? ???????????? ????????????.");
             } else {
             	$("#MPWcheckText2").css("color" , "green").html("??????????????? ???????????????.");
             }
        }

			 
        $(document).ready(function(){
	            
        	$("#inputMid").keyup(function(){
        		 $("#midCheckText").css("color","red").html("???????????? ????????? ???????????????.");
        		 
        		 $("#submit").attr("disabled", "disabled");
        		 
        		});
	            /* ?????? ?????? ?????? */
	          $("#inputMNAME").keyup(function(){
	        	 var inputMNAME = $("#inputMNAME").val();
	        	  if(inputMNAME.length == 0) {
	        		  $("#MNAMEcheckText").css("color" , "red").html("????????? ??????????????????.");
	        	  } else {
	        		  $("#MNAMEcheckText").html("");
	        	  }
	          });

				/* ????????? ?????? ?????? */
				$("#inputMNICK").keyup(function(){
					var inputMNICK = $("#inputMNICK").val();
					
					$.ajax({
						type : "get",
						url : "MNICKcheck",
						data : { "inputMNICK" : inputMNICK },
						async : false,
						success : function(result){
							if(inputMNICK.length == 0 || inputMNICK =="") {
								$("#MNICKcheckText").css("color" , "red").html("?????????????????? ??????????????????.");
							} else if(result =="OK"){
								$("#MNICKcheckText").css("color" , "blue").html("??????????????? ??????????????????.");
							} else if(result != "OK"){
								$("#MNICKcheckText").css("color" , "red").html("?????????????????? ??????????????????.");
							}
						}
					});
					
				});
				
	      	var mgender = $("input[name=gender]:checked").val();
	      	var maddr = $("#sample6_postcode").val()+" " +$("#sample6_address").val()+" " +$("#sample6_detailAddress").val()+ " " +$("#sample6_extraAddress").val();

	
	});
	
	//?????? ?????? js
    function handleImgFileSelect(e){
       var files =  e.target.files;
       var filesArr = Array.prototype.slice.call(files);
       
       filesArr.forEach(function(f){
          
       sel_file = f;
       
       var reader = new FileReader();
       reader.onload =  function(e){
          $("#imgid").attr("src", e.target.result);
       }
       reader.readAsDataURL(f);
          
          
       });
    }
	
	function check(){
		var inputMid = $("#inputMid").val();
		var inputMPW = $("#inputMPW").val();
		var MPWcheck = $("#MPWcheck").val();
		var inputMNAME = $("#inputMNAME").val();
		
		var inputMGENDER = $("#inputMGENDER").val();
		var mgender = $("input[name=gender]:checked").val();
		
		var inputMPHONE = $("#inputMPHONE").val();
		var maddr = $("#sample6_postcode").val()+" " +$("#sample6_address").val()+" " +$("#sample6_detailAddress").val()+ " " +$("#sample6_extraAddress").val();
		var inputMNICK = $("#inputMNICK").val();
		
		
		 if(inputMPW.length == 0 || inputMPW.length < 4 || inputMPW.length > 20) {
			alert("??????????????? ????????? ?????????.");
			document.getElementById("inputMPW").focus();	
			
		} else if(MPWcheck.length == 0 || MPWcheck.length < 4 || MPWcheck.length > 20 || inputMPW != MPWcheck) {
			alert("??????????????? ???????????? ????????????.");
			document.getElementById("MPWcheck").focus();	
			
		} else if(inputMNAME.length == 0 || inputMNAME.length > 5) {
			alert("????????? ????????? ?????????.");
			document.getElementById("inputMNAME").focus();
			
		} else if(inputMPHONE.length == 0 || inputMPHONE.length > 11) {
			alert("??????????????? ????????? ?????????.");
			document.getElementById("inputMPHONE").focus();
			
		} else if(inputMNICK.length == 0 || inputMNICK.length > 20) {
			alert("???????????? ????????? ?????????.");
			document.getElementById("inputMNICK").focus();
			
		} else if($("#MNICKcheckText").html() == "????????? ??????????????????.") {
			alert("?????? ???????????? ??????????????????.");
			document.getElementById("inputMNICK").focus();
			
		} else {
			location.href("member/memberjoin");
		}
	}
	
  	
  	</script>
  	
<script>
	//????????????
	function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

            // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
            // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
            var addr = ''; // ?????? ??????
            var extraAddr = ''; // ???????????? ??????

            //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
            if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                addr = data.roadAddress;
            } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                addr = data.jibunAddress;
            }

            // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
            if(data.userSelectedType === 'R'){
                // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // ???????????? ??????, ??????????????? ?????? ????????????.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // ????????? ??????????????? ?????? ????????? ?????????.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // ??????????????? ?????? ????????? ?????? ????????? ?????????.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // ????????? ???????????? ????????? ????????????.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
    
	}

	
</script>


</html>