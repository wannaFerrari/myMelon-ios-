# myMelon-ios-
![1p](https://user-images.githubusercontent.com/100071835/226097225-234371d5-9fe7-4ecf-9d37-e60a8561a4fd.png)
### 선택 화면
```
- 하나의 collectionView 안에 여러 contentView를 포함하여 구성
- 앱 안에 포함된 곡의 정보를 불러오며 선택 화면 속 UI 생성
    - 곡 파일에 미리 앨범 사진, 곡 이름, 아티스트 이름을 저장
- 상단에 추천곡 표시 기능
    - loadTrack()함수를 통해 곡 정보를 불러옴
    - 불러들여진 곡 중에서 randomElement()를 통해 선정
- 원하는 곡을 눌러 재생
```
### 재생 화면
```
- 선택 화면에서 선택한 곡의 정보를 기반으로 사진과 곡 이름, 아티스트 이름, 가사 불러옴
- 곡의 총 길이와 현재 재생 시간 표시
- 이전 곡 버튼
    - 현재 재생시간이 1초를 지났을 경우 곡의 시작부분으로 이동
    - 현재 재생시간이 1초 미만일 경우 이전 곡으로 이동
- 다음 곡 버튼을 통해 다음곡으로 이동
- 슬라이더를 이동하여 곡의 원하는 부분으로 이동
    - 슬라이더의 현재 위치 값(0.0~1.0)을 곡의 길이에 곱해 재생할 위치 선정
- 마지막 곡이 끝나면 맨 앞의 곡 재생
- 부가 기능
    - 슬라이더 위 좌측의 버튼을 통해 반복 재생 켜기, 끄기
    - 슬라이더 위 우측의 버튼을 통해 랜덤 재생 켜기, 끄기
    - 앨범 사진 좌측 하단의 버튼을 통해 가사 보기
    - 재생 버튼을 toggle로 하여 재생, 일시 정지 및 해당하는 UI로 변경
```
### 가사 화면
```
- 반투명한 화면 위에 가사 출력
- 저장된 곡 제목을 switch case 문을 통해 일치하는 제목의 가사를 label에 출력
```

### 플레이 영상
[![Video Label](http://img.youtube.com/vi/Ib36k__zh6M/0.jpg)](https://youtu.be/Ib36k__zh6M)
이미지를 클릭하면 유튜브로 이동합니다
