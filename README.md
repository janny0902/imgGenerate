# imgGenerate

## Pannellum 라이브러리를 사용하여 파노라며 영상뷰어를 구축/ 서비스 제공

Pannellum 라이브러리중
multires 옵션 type 을 사용 하고

ex:)<br>
viewer = pannellum.viewer('panorama', { <br>
    &nbsp;&nbsp;"type": "multires",<br>
	&nbsp;&nbsp;&nbsp;&nbsp;"autoLoad": true,<br>
	&nbsp;&nbsp;&nbsp;&nbsp;"compass": true,<br>
	&nbsp;&nbsp;&nbsp;&nbsp;"autoLoad": true,<br>
	&nbsp;&nbsp;&nbsp;&nbsp;"pitch":p,<br>
	&nbsp;&nbsp;&nbsp;&nbsp;"yaw":y,<br>
    &nbsp;&nbsp;"multiRes": {<br>
        &nbsp;&nbsp;&nbsp;&nbsp;"basePath":current_img,<br>
        &nbsp;&nbsp;&nbsp;&nbsp;"path": "/%l/%s%y_%x",<br>
        &nbsp;&nbsp;&nbsp;&nbsp;"fallbackPath": "/fallback/%s",<br>
        &nbsp;&nbsp;&nbsp;&nbsp;"extension": "jpg",<br>
        &nbsp;&nbsp;&nbsp;&nbsp;"tileResolution": 512,<br>
        &nbsp;&nbsp;&nbsp;&nbsp;"maxLevel": 4,<br>
        &nbsp;&nbsp;&nbsp;&nbsp;"cubeResolution": 3496<br>
    }, <br>
    
예제를 참고하여 분할한 이미지 사용


1.고해상도이미지 분할 서비스

파노라마 고해상도 이미지를 분할하여 서비스 할 수 있도록 
파노라마 이미지를 분할하는 Generate.py 

2. 고해상도 이미지 분할 절차
   - 고해상도 이미지 촬영
   - python generate.py -o al_USE_001 -n C:\dev\bin\nona.exe E:\panorama_view\03.AIRVIEW_USE\al\al_001.JPG
   - 해당 이미지 / 데이터 값을 이용하여 서비스


