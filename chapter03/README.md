# chapter03

**플러터 프로젝트 구조**

```
├── .dart_tool
├── android
├── ios
├── lib
├── test
├── pubspec.yaml
├── .metadata
├── .packages
├── project_name.iml
└── pubspec.lock
```

<table>
    <tr>
        <td>폴더 / 파일</td>
        <td>내용</td>
        <td>비고</td>
    </tr>
    <tr>
        <td>android</td>
        <td>안드로이드 프로젝트 관련 파일</td>
        <td>안드로이드 스튜디오로 실행 가능</td>
    </tr>
    <tr>
        <td>ios</td>
        <td>iOS 프로젝트 관련 파일</td>
        <td>xCode로 실행 가능(맥 전용)</td>
    </tr>
    <tr>
        <td>lib</td>
        <td>플러터 앱 개발을 위한 다트 파일</td>
        <td>플러터 SDK 설치 필요</td>
    </tr>
    <tr>
        <td>test</td>
        <td>플러터 앱 개발 중 테스트 파일</td>
        <td>테스트 편의성 제공</td>
    </tr>
    <tr>
        <td>pubspec.yaml</td>
        <td>패키지, 이미지, 폰트 설정</td>
        <td rowspan="2">직접 관리</td>
    </tr>    
    <tr>
        <td>.metadata</td>
        <td>플러터 SDK 정보</td>
    </tr>    
    <tr>
        <td>.packages</td>
        <td>플러터 SDK에 사용하는 기본 패키지 경로</td>
        <td rowspan="4">수동 관리</td>
    </tr>    
    <tr>
        <td>project_name.iml</td>
        <td>파일이 자동으로 생성될 때 만들어지는 폴더 위치</td>
    </tr>    
    <tr>
        <td>pubspec.lock</td>
        <td>pubspec.yaml 파일에 적용된 패키지 위치</td>
    </tr>
</table>
<br/>

