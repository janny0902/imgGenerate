# imgGenerate

## Pannellum 라이브러리를 사용하여 파노라며 영상뷰어를 구축/ 서비스 제공

Pannellum 라이브러리중
multires 옵션 type 을 사용 하고
```python
ex:)<br>
viewer = pannellum.viewer('panorama', { <br>
    &nbsp;&nbsp;"type": "multires",<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"autoLoad": true,<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"compass": true,<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"autoLoad": true,<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"pitch":p,<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"yaw":y,<br>
    &nbsp;&nbsp;"multiRes": {<br>
       &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;"basePath":current_img,<br>
       &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;"path": "/%l/%s%y_%x",<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"fallbackPath": "/fallback/%s",<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"extension": "jpg",<br>
       &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;"tileResolution": 512,<br>
       &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;"maxLevel": 4,<br>
       &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;"cubeResolution": 3496<br>
    }, <br>
```    
예제를 참고하여 분할한 이미지 사용


1.고해상도이미지 분할 서비스

파노라마 고해상도 이미지를 분할하여 서비스 할 수 있도록 
파노라마 이미지를 분할하는 Generate.py 

2. 고해상도 이미지 분할 절차
   - 고해상도 이미지 촬영
   - python generate.py -o al_USE_001 -n C:\dev\bin\nona.exe E:\panorama_view\03.AIRVIEW_USE\al\al_001.JPG
   - 해당 이미지 / 데이터 값을 이용하여 서비스

-o output 폴더명
-n nona.exe 경로
E: 고해상도 이미지 경로

해당 폴더에 분할된 이미지가 나옴.  JSON 파일을 확인하여 cubeResolution, maxLevel, tileResolution 3개값을 확인하여 
서비스 구축


3.panorama_renew.jsp
 mvc 패턴으로 백단 컨트롤러 서비스 dao 등 필요  db연결해서 가져오는 형태  
 
4.DB 컬럼
 1. SEQ :순번
 2. K_NAME : 한글명 - 파노라마 타이틀에 들어감
 3. E_NAME : 영문명 - 필터 해당 선택자
 4. PIC_NUM : 사진번호 - 해당 사진의 번호 
 5. PITCH_DATA : 이미지에 대한 위치 (X)
 6. YAW_DATA : 이미지에 대한 위치 (Y)
 7. TYPE : scene , info , equirectangular ,multires 데이터를 넣으면  해당 버튼이 표시됨
   scene : 이동 링크
   info  : 설명 문구
   equirectangular : 이미지 정적 표시
   multires : 다 해상도 이미지 표시
   
 8. TEXT : 링크 또는 설명 문구에 표시될 문구
 9. URL : info 에서 문구 클릭시 이동될 페이지 URL
 10. IMAGEPATH : 파노라마 이미지 위치 EX)/images/oleum_Panorama/gama/gama_001.JPG  OR /images/oleum_Panorama/gama/001   (multires)
 11. X-COORD : 구글좌표 X값  (다음 지도API 연동)
 12. Y-COORD : 구글좌표 Y값  (다음 지도API 연동)
 13. TILE_RESOLUTION : multires 타입일 경우 해당 분할 픽셀
 14. MAX_LEVEL : multires 타입일 경우 줌인 줌아웃 레벨 설정
 15. CUBE_RESOLUTION : multires 타입일경우 분할 픽셀 수

13,14,15 인경우 2 번 Generate.py  실행하면 JSON 파일 도출됨. 해당 도출된 JSON 파일 안에 값이 있음 해당값을 DB에 저장 - 그래야 깨지지 않음<br>

multires 가 아닌경우 2, 13,14,15 해당 안됨<br>

equirectangular  : 몇장 안되는 뷰어를 만들때 사용,  파노라마 불러올때 1장을 전체 불러옴  메모리 = 이미지 용량 정도됨.  몇장 안되면 그냥 사용하면됨 편함<br>
multires  :여러장을 링크로 연결 하여 보여줄떄 (로드뷰 경우) 1장 = 1MB 일경우 메모리 제한에 걸려 블렉아웃 됨. 그래서 해상도를 분할하여 최소한의 리소스를 사용하도록 하는 타입 (보여지는 부분만 로딩하여 사용자에게 제공)
   
 
 
