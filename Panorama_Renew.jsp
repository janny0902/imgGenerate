<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>파노라마 뷰어</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pannellum@2.5.6/build/pannellum.css"/>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/pannellum@2.5.6/build/pannellum.js"></script>
    
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="<c:url value='/js/main.js' />"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=187b047ba591db4749edc4465c41ecef"></script>


    <style>
@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
*,
body{ font-family: 'NanumSquare', sans-serif;}
.menuWrap{
    display:flex;
    justify-content: space-between;
}

ol,
ul {
    list-style: none;
}
h1,
h2,
h3,
h4,
body {
    font-family: 'NanumSquare', sans-serif;
}
.logo a{
    width: 260px;
    height: 51px;
    background: url(../images/puble_img/logo.png) no-repeat center center / 100% 100%;
    text-indent: -9999em;
    display: inline-block;
    margin-top:10px;
}

.menuWrap > nav > ul{
    display:flex;
    width:1033px;
    justify-content: space-between;
    position: relative;
    white-space: nowrap;
    font-size:25px;
    line-height: 100px;
}

.menuWrap > nav > ul > li:hover{
    color: #00bbb0;
}

.menuWrap > nav > ul > li > ul{
    position: absolute;
    top:calc(100% + 21px)
}

.menuWrap > nav > ul > li > ul > li{
    line-height: 48px;
}
.menuWrap > nav > ul > li > ul a{
    text-decoration:none;
    color: #fff;
    padding-bottom:8px;
    font-size: 23px;
}
.menuWrap > nav > ul > li > ul a:hover{
    color: #00bbb0;
    border-bottom:1px solid #00bbb0;
}
.main02 .textBox02{
    padding:85px 0 64px;
    line-height: 32px;
}

@font-face {
  font-family: 'nanum';
  font-style: normal;
  font-weight: 400;
  src: url(../font/NanumGothic.eot);
  src: url(../font/NanumGothic.eot?#iefix) format('embedded-opentype'),
       url(../font/NanumGothic.woff) format('woff'),
       url(../font/NanumGothic.ttf) format('truetype');
}

@font-face {
	font-family: 'nanumBold';
	font-style: normal;
	font-weight:700;
	src: url(../font/NanumGothicBold.eot);
	src: url(../font/NanumGothicBold.eot?#iefix) format('embedded-opentype'),
	   url(../font/NanumGothicBold.woff) format('woff'),
	   url(../font/NanumGothicBold.ttf) format('truetype');
	}

html,body{background-color:#ffffff; width:100%}


body,h1,h2,h3,h4,h5,h6,textBox {font-family: 'nanum';}
.fontbold{font-family:'nanumBold'}
.contentbox_div{background-color:#f5f5f5;}
.o_all {
    margin-bottom: 15px;
}


/* .logo a{
    width: 75px;
    height: 25px;
    background: url(../images/uis/maps/logo.png) no-repeat center center / 100% 100%;
    text-indent: -9999em;
    display: inline-block;
    margin-top:20px;
    margin-left:20px;
} */

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.img-slider {
    position: relative;
    width: 100%;
 
}

.img-slider .slider-container {
    position: absolute;
    width: 300%;
    top: 0;
    left: 0;
    overflow: hidden;
    animation: slider 26s infinite;
}
.img-slider .slider-container .slide {
    position: relative;
    width: 33.33333333%;
    height: 100%;
    float: left;
    overflow: hidden
}
.img-slider .slider-container .slide img {
  display: block;
  width: 100%;
 
}
@keyframes slider {
    0%, 25%, 100%{left: 0}
    
    30%, 55%{left: -100%}
    
    60%, 85%{left: -200%}
}



// Classes
.show {
  display: block !important;
}
.margin{
	width:1200px;
	margin:0 auto;
}
.hidden {
  display: none !important;
  visibility: hidden !important;
}


.invisible {
  visibility: hidden;
}
.white{background-color:#ffffff !important;}

// Usage as mixins
.element {
  .show();
}
.another-element {
  .hidden();
}
.adrassname{
  float:right;
}
.imgdiv{
	width:100%;
	height:250px;
}
.mainContentBox{
    background: #f0f0f0;
    padding:30px 0 30px;
}
 .textBox{
    position:absolute ;
    top:-10%;
    left:50%;
    transform:translate(-50%, 130%);
    color: #fff;
    z-index: 2;
    text-align:center;
}
.textBox >.mainDesc01{
    font-size:47px;
    margin-bottom:29px;
}

.textBox >.mainDesc02{
    font-size:40px;
}
.img-slider:after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0,0,0,0.25);
    z-index: 1;
}


.container{
    width:1500px;
    margin:0 auto;
}

#slideshow { 
  position: relative; 
  width: 100%; 
  height: 500px; 
  box-shadow: 0 0 20px rgba(0,0,0,0.4); 
}

#slideshow > div { 
  position: absolute; 
  width: 100%;
  height:500px;
}

   /* mainmenu2 */
.main02 .tabMenu{
    display:flex;
}
.main02 .tabMenu .work{
    position: relative;
}
.main02 .tabMenu .work:hover{
    background: #fff;
    cursor:auto;
}

.main02 .tabMenu {
    width: 20%;
    display:inline-block;
    box-sizing: border-box;    
    line-height: 82px;
    font-size:23px;
    cursor:pointer;
}
.main02 .tabMenu >hover{
    background: #00bbb0;
    color: #fff;
}
.main02 .textBox02{
    padding:10px 0 10px;
    line-height: 32px;
}
.main02 .textBox02 .mainDesc03{
    font-size:15px;
}
.main02 .textBox02 .mainDesc03 span{
    color: #00bbb0;
}
.main02 .mainContentBox{
    background: #f0f0f0;
    padding:71px 0 141px;
}
.contentdiv{
	background-color:#eeeeee78;
}
.dronicon{
	width:30px;
	height:30px;
} 

    #panorama {
        width: 100%;
        height: 850px;
    }
    #map{
    	position : absolute;
    	z-index:99;
        width: 10%;
        height: 150px;
        bottom:20px;
        right:20px;
    }
    .pnlm-title-box{
    	font-size:40px;
    }
    </style>
</head>
<body>
<div class="container menuWrap">
            <h1 class="logo"><a href="#LINK" onclick="javascript:fn_main_headPageMove('1','main/EgovMainView')">logo</a></h1>
            <nav>
                <ul>
                    <li>ABOUT US
                       <!--  <ul>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('11','main/CEOWelcom')">CEO인사말</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('12','main/JsisHistory')">연혁</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('13','main/License')">면허 및 인증</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('14','main/Organization')">조직도</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('15','main/MapNavi')">찾아오시는 길</a></li>
                        </ul> -->
                    </li>
                    <li>WORK
                      <!--   <ul>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('21','main/SpaceInformationProject')">공간정보사업</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('22','main/SystemProject')">시스템사업</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('23','main/AviationBusiness')">무인항공사업</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('24','main/ResearchProject')">공간연구사업</a></li>
                        </ul> -->
                    </li>
                    <li>EQUIPMENT
                       <!--  <ul>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('31','main/SurveyingEquipment')">측량장비</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('32','main/DroneImagingEquipment')">드론촬영장비</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('33','main/InputOutputUnit')">입출력장치</a></li>
                            <li><a href="#LINK" onclick="javascript:fn_main_headPageMove('34','main/SoftWareUnit')">S/W</a></li>
                        </ul> -->
                    </li>
                </ul>
            </nav>
        </div>
</body>
<body>

<div id="panorama">
	<div id="map"></div>
</div>






<script>
 var eName = '<%=(String)session.getAttribute("eName")%>';
 let viewer
 $.ajax({				
    url: "<c:url value='/panoramaData.json'/>",
    data:{"eName":eName},
    success: function(res) {
    	let data = res.dataView
    	let picnum
    	let filterPicNum
    	let hotsPot
    	let scene
    	let scenes
    	let ispicNum
    	let setSceneV=''
    	let makeJson='{'
    	console.log(data)
    	if (window.NodeList && !NodeList.prototype.forEach) {
		  NodeList.prototype.forEach = Array.prototype.forEach;
		}
    	
    	let istype = function(data){
	   			return data.type == "equirectangular";
	   		}
    	let isTypeFun = data.filter(istype)
    	
    	
    	for(let i=1;i<=isTypeFun.length;i++){
    		ispicNum = function(data){    
    			return data.picNum == i;
    		}
	    	filterPicNum = data.filter(ispicNum)
	    	
	    	hotsPot = hotspotMakeJson(filterPicNum)
	    	scene = sceneMakeJson(filterPicNum,hotsPot)
	    	scenes = scnensMakeJson(i,scene)
	    	if(i == isTypeFun.length){
	    		makeJson += scenes 
	    	}else{
	    		makeJson += scenes +","
	    	}
	    	
    	}
    	//console.log(makeJson)
    	makeJson+="}"
    	
    	
    	scenes = JSON.parse(makeJson);
    	
    	
    	viewer = pannellum.viewer('panorama', {
    		 
    	    "default": {
    	    	"title": data[0].kName,
    	        "firstScene": "1",
    	        "sceneFadeDuration": 1000,
    	        "autoLoad": true
    	    },
    	    "scenes": scenes 
    	 })   	    
    	    
    	// hotspot 제작 
   	     function hotspotMakeJson(data){
	   		let isScane = function(data){
	   			return data.type == "scene";
	   		}
	   		let filter = data.filter(isScane)
	   		let jsonData = '['
	   		console.log(filter)
	   		
	   		filter.forEach(function (item,i){
	  				let hotspot = '{"pitch":'+ item.pitchData+','+
	                  '"yaw": '+ item.yawData+','+
	                  '"type":"'+ item.type+'" ,'+
	                  '"text":"'+ item.text+'포인트",'+
	                  '"sceneId":"'+ item.text+'"';
	               if(i==filter.length-1){
	               		jsonData += hotspot +'}'
	  				}
	  				else{
	  					jsonData += hotspot +'},'
	  				}
	  			})
	  			
	  			
  			let isInfo = function(data){
   				return data.type == "info";
	   		}
	   		let infofilter = data.filter(isInfo)
	  		infofilter.forEach(function(item,i){
	  				let hotspot = ',{"pitch":'+ item.pitchData+','+
	                  '"yaw": '+ item.yawData+','+
	                  '"type":"'+ item.type+'" ,'+
	                  '"text":"'+ item.text+'",'+
	                  '"URL":"'+ item.url+'"'; 
	               if(i==infofilter.length-1){
	               		jsonData += hotspot +'}'
	  				}
	  				else{
	  					jsonData += hotspot +'},'
	  				}
	  			})	
	   		
	        jsonData +=']'; 
	   		
	   		return jsonData; 
    	}
    	//scene 제작 
    	    function sceneMakeJson(data,hotspot){
    		
 	   		let isScane = function(data){
 	   			return data.type == "equirectangular";
 	   		}
 	   		let filter = data.filter(isScane)
 	   		let jsonData = ''
 	   		filter.forEach(function(item,i){
 	  				jsonData = '{"hfov":"98",'+
 	                  '"pitch": '+ item.pitchData+','+
 	                  '"yaw":'+ item.yawData+' ,'+
 	                  '"type":"'+ item.type+'" ,'+
 	        	 	 /*  '"multiRes": {'+
	 	        	     '"basePath": "'+item.imagepath+'",'+
	 	        	      '"path": "/%l/%s%y_%x",'+
	 	        	      '"fallbackPath": "/fallback/%s",'+
	 	        	     
	 	        	      '"extension": "jpg",'+
	 	        	      '"tileResolution": "512",'+
	 	        	      '"maxLevel": "4",'+
	 	        	      '"cubeResolution": "2600"},'+ */
 	                  '"panorama":"'+item.imagepath+'",'+
 	                  '"hotSpots":'+hotspot;
 	   			if(i==filter.length-1){
 	   				jsonData += '}'
  				}
  				else{
  					jsonData += '},'
  				}
 	  			
 	  			})
 	   		
 	        jsonData += '';
 	   		return jsonData; 
     	} 
     	
    	    function scnensMakeJson(picNum,scene){
    	    	let jsonData = ''
     	  				jsonData += '"'+picNum+'":'+scene     	             
     	   		
     	        jsonData += '';
     	   		return jsonData; 
         	} 
    
    
    	    
   	    viewer.on('load', function(event) {
   	    	if(setSceneV != viewer.getScene()){
   	        	setSceneV=viewer.getScene();
   	        	console.log(isTypeFun);
   	        	let picNumber = function(isTypeFun){
   		   			return isTypeFun.picNum == setSceneV
   		   		}
   	        	let isPicNum = isTypeFun.filter(picNumber)
   	        	console.log(isPicNum)
   	        	console.log(isPicNum[0].xCoord);
   	        	console.log(isPicNum[0].yCoord);
   	        	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	   	 		mapOption = { 
	   	 		    center: new kakao.maps.LatLng(isPicNum[0].xCoord, isPicNum[0].yCoord), // 지도의 중심좌표
	   	 	   		level: 3 // 지도의 확대 레벨
	   	 		};
	   	 		
	   	 		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	   	 		
	   	 		// 마커가 표시될 위치입니다 
	   	 		var markerPosition  = new kakao.maps.LatLng(isPicNum[0].xCoord, isPicNum[0].yCoord); 
	   	 		
	   	 		// 마커를 생성합니다
	   	 		var marker = new kakao.maps.Marker({
	   	 		    position: markerPosition
	   	 		});
	   	 		
	   	 		// 마커가 지도 위에 표시되도록 설정합니다
	   	 		map.relayout();
	   	 		marker.setMap(map);
	   	        	
	   	    	}
   	    	
       	});    
		
    	viewer.on('mouseup', function(event) { 
    	    // coords[0] is pitch, coords[1] is yaw
    	    let coords = viewer.mouseEventToCoords(event);
    	    console.log("pitch:"+viewer.getPitch())
    	    console.log("yaw:"+viewer.getYaw())
    	    viewer.addHotSpot({"pitch":viewer.getPitch(), "yaw":viewer.getYaw(), "type":"scene"},viewer.getScene());
    	    // Do something with the coordinates here... 
    	});

    	
    	
    	//다음지도 생성
    	
		
		
		
    	}
    	
    	
    	
}); 

 function loadscan(){
		let data = $("#scanPickNum").val();
		viewer.loadScene(data,-20,20,98)
		
	} 


 



</script>
<div>화면 번호 :&nbsp;<input type="text" id="scanPickNum"><button id="loadscan" onclick="loadscan()">이동</button></div>
</body>

</html>