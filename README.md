## 📌깃 컨벤션

### 💡 커밋룰

#### Commit 메세지 작성 법

```
Type: 커밋내용 [지라이슈번호]
- Type은 영어로, 그 뒤 커밋 내용은 한글로 적기로 한다.
- ex) FIX : 로그인 에러 수정
```

#### Type 유형

```
FE: 프론트앤드 기능 개발, 코드 수정
BE: 백앤드 기능 개발, 코드 수정
FIX: 버그 수정
DOC: 문서 수정
BUILD: 시스템 또는 외부 종속성에 영향을 미치는 변경사항(npm, yarn 등)
CI: CI 관련 설정
MERGE: 기능 개발 후 브랜치 병합
CHORE: 그 외 자잘한 작업
```

### 💡 브랜치

```
Master: 최종 코드 완성시 merge 한다.
Develope: 각 FE, BE 브랜치에서 작업한 내용을 merge 한다.
FE: 프론트앤드 작업. 세부 기능은 하위 브랜치 생성하여 작업 후 merge 한다.
BE: 백앤드 작업. 세부 기능은 하위 브랜치 생성하여 작업 후 merge 한다.
```

### 💡 브랜치 전략

```
BE or FE-기능
-ex) BE-로그인, FE-로그인 화면 구현
```

## 📌각 문서 링크

[기능명세서, 요구사항 정의서, API명세서 통합본](https://docs.google.com/spreadsheets/d/1Snsq4_rEgos0y4JuI4C1bfJfTSqp9-xIvPWQTEl6qoY/edit#gid=0)

[와이어프레임](https://ovenapp.io/view/M10rj2Ij6jc580rV5fPBZKw8izPXFVDp/INGlZ)

[스토리보드](https://www.figma.com/file/UMAq04A8MwNMbEdVgHQgA2/%EB%94%94%EC%9E%90%EC%9D%B81?node-id=0%3A1)

# ShareSpot 서비스

## 📌 회원관리

### 1) 회원가입

<img width=30% src="https://user-images.githubusercontent.com/97588187/204293466-bfb9a590-6221-4c6f-878b-0823db02e4d0.jpg">
<p>각 항목의 유효성 검사를 만족하면, 회원 가입이 완료됩니다.</p>

### 2) 로그인

<img width=30% src="https://user-images.githubusercontent.com/97588187/204293718-636ce0d8-8faa-4a03-aee2-13f77919d198.jpg">
<p>유저간의 신뢰성 확보를 위해 로그인 후 서비스 이용이 가능합니다.</p>

### 3) 비밀번호 재발급

<img width=30% src="https://user-images.githubusercontent.com/97588187/204293841-ed9ed648-1ef6-4929-bc5a-97d45f514b5f.jpg">
<p>가입했던 아이디(이메일)를 입력하면, 해당 이메일로 비밀번호 초기화 링크가 전송됩니다.</p>

## 📌 메인피드

### 1) 무한스크롤링

<img width=30% src="https://user-images.githubusercontent.com/97588187/204294088-70eccf63-8c21-4fd8-91f6-16f98f7efeb2.jpg">
<p>
메인 피드에서는 본인이 팔로우한 유저가 쓴 게시글들이 무한 스크롤링으로 나옵니다.</p>

### 2) 유저검색

<img width=30% src="https://user-images.githubusercontent.com/97588187/204294140-67f0ee0c-ca48-4b31-8e55-07fff13fab41.jpg">
<p>우측 상단의 돋보기 버튼을 누르면, 유저 검색이 가능합니다.<br>
검색 결과를 클릭하면 해당 유저의 프로필로 이동합니다.</p>

## 📌 큐레이션 페이지

### 1) 이달의 핫스팟

<img width=30% src="https://user-images.githubusercontent.com/97588187/204294203-4b1e19ab-b1ba-4c51-b087-5de208dc31b6.jpg">
<p>매월 높은 등급을 가진 유저가 작성한 게시글 중 인기 게시글을 대분류별로 선정하여 보여주는 기능입니다.</p>

### 2) 태그 탐색기능

<img width=30% src="https://user-images.githubusercontent.com/97588187/204295102-fd944b5c-9d4c-4e19-926f-6a62a89b7afe.jpg">
<p>원하는 태그를 누르고 검색하면 해당 게시글들이 나옵니다.</p>

### 3) 상세 게시글 조회

<img width=30% src="https://user-images.githubusercontent.com/97588187/204295181-fb81c96f-16fe-469e-9f57-3a3e865ecb6f.jpg">
<p>자세히 보고 싶은 게시글이 있다면 클릭하여 상세 페이지로 이동할 수 있습니다.</p>

## 📌 게시글 상세 조회 페이지

<img width=30% src="https://user-images.githubusercontent.com/97588187/204295526-1163b638-bb74-4fec-8254-21f5093bd554.jpg">

### 1) 댓글 좋아요

</p>댓글을 달거나 좋아요를 클릭할 수 있습니다.</p>

### 2) 길찾기

<p>지도를 클릭하면 해당 위치를 목적지로 카카오맵 길찾기 서비스 페이지로 이동됩니다.</p>

### 3) 스크랩

<p>스크랩 버튼을 클릭하면, 내 프로필에서 확인할 수 있습니다.</p>

## 📌 그룹 페이지

### 1) 그룹 리스트 및 검색

<span>
<img width=30% src="https://user-images.githubusercontent.com/97588187/204295819-7e32d5a8-ea0e-405b-aa74-1fcb0677376b.jpg">
<img width=30% src="https://user-images.githubusercontent.com/97588187/204295887-80051408-0bbf-4555-82b9-be22fc309b1d.jpg">
</span>
<p>그룹 목록 확인 및 원하는 그룹을 검색할 수 있습니다.</p>

### 2) 가입 그룹 조회

<img width=30% src="https://user-images.githubusercontent.com/97588187/204295970-43f8b8ea-8e5d-4fec-ad93-d3f2302e559f.jpg">
<p>상단의 MY메뉴를 클릭하면 내가 가입한 그룹을 조회할 수 있습니다.</p>

### 3) 그룹 상세 조회 및 모임

<img width=30% src="https://user-images.githubusercontent.com/97588187/204296066-e919482c-0822-4c7a-86fe-c5309d15baa4.jpg">
<p>그룹을 클릭하면 상세 조회 페이지로 이동합니다.<br>
현재 진행중인 모임을 볼 수 있습니다.</p>

## 📌 게시글/그룹 등록

### 1) 등록

<img width=30% src="https://user-images.githubusercontent.com/97588187/204296137-7318ad68-0165-44a2-8481-69a90af474be.jpg">
<p>하단 메뉴의 등록 버튼을 누르면 게시글, 그룹 등록 페이지로 이동됩니다.</p>

## 📌 프로필 페이지

### 1) 게시글

<img width=30% src="https://user-images.githubusercontent.com/97588187/204296225-02c0050a-7424-4eb7-805f-d6ed2f57a79a.jpg">

<p>내가 작성한 게시글을 볼 수 있습니다.</p>

### 2) 뱃지

<img width=30% src="https://user-images.githubusercontent.com/97588187/204296327-842f4381-adca-4ab5-ad56-378f8feac8a9.jpg">

<p>내가 보유하고 있는 뱃지를 확인할 수 있습니다.</p>

### 3) 저장됨

<img width=30% src="https://user-images.githubusercontent.com/97588187/204296413-3f8f9cc3-fadb-4f4f-8bb3-3fc5e0ff22c6.jpg">

<p>스크랩된 게시글을 볼 수 있습니다.</p>

### 4) 프로필 편집

<img width=30% src="https://user-images.githubusercontent.com/97588187/204296483-e849b282-d766-4c59-a72f-ebf7bdba0ea7.jpg">

<p>내프로필 페이지에서는 프로필 편집을 할 수 있습니다.</p>

### 5) 취향분석

<span>
<img width=30% src="https://user-images.githubusercontent.com/97588187/204296570-0b4929a9-fa40-48c9-85ca-85bbc443ccc4.jpg">
<img width=30% src="https://user-images.githubusercontent.com/97588187/204296595-dd8dc322-c812-4c2d-a1b9-6d138335ac1e.jpg">
<img width=30% src="https://user-images.githubusercontent.com/97588187/204296616-b43c7c3c-c411-4dfe-8267-7c8261a8e54a.jpg">
</span>

<p>지도, 차트, 타임라인으로 유저가 작성한 게시글을 분석할 수 있습니다.<br>게시글에 등록한 사진의 메타데이터를 바탕으로 지도에 마커가 표시됩니다.</p>

### 6) 팔로우/팔로잉

<p>나를 팔로우하는 유저, 내가 팔로우하는 유저를 볼 수 있습니다.</p>
