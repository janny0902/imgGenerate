# imgGenerate

## Pannellum 라이브러리를 사용하여 파노라며 영상뷰어를 구축/ 서비스 제공

Pannellum 라이브러리중
multires 옵션 type 을 사용 하고

ex:)<br>
viewer = pannellum.viewer('panorama', { <br>
    "type": "multires",<br>
	"autoLoad": true,<br>
	"compass": true,<br>
	"autoLoad": true,<br>
	"pitch":p,<br>
	"yaw":y,<br>
    "multiRes": {<br>
        "basePath":current_img,<br>
        "path": "/%l/%s%y_%x",<br>
        "fallbackPath": "/fallback/%s",<br>
        "extension": "jpg",<br>
        "tileResolution": 512,<br>
        "maxLevel": 4,<br>
        "cubeResolution": 3496<br>
    }, <br>
    
예제를 참고하여 분할한 이미지 사용


1.고해상도이미지 분할 서비스

파노라마 고해상도 이미지를 분할하여 서비스 할 수 있도록 
파노라마 이미지를 분할하는 Generate.py 

2. 고해상도 이미지 분할 절차
   - 고해상도 이미지 촬영
   - python generate.py -o al_USE_001 -n C:\dev\bin\nona.exe E:\panorama_view\03.AIRVIEW_USE\al\al_001.JPG
   - 해당 이미지 / 데이터 값을 이용하여 서비스


