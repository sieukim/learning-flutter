# Chapter 09

플러터에서는 앱의 데이터를 저장하기 위해 내부 저장소 또는 데이터베이스를 이용할 수 있습니다. 
이때, 내부 저장소는 크게 SharedPreferences와 파일로 나누어볼 수 있습니다.
오늘은 이 내부 저장소에 대해 이야기하겠습니다.

<br/>

<h3>09-1 SharedPreferences에 데이터 저장하기</h3><br/>

**SharedPreferences**

>첫 번째, SharedPreferences입니다. 
> SharedPreferences란 내부 저장소에 데이터를 저장하기 위해 사용하는 패키지입니다. 
> 해당 패키지는 key-value 쌍으로 구성된 파일을 가리키며 파일 내 데이터를 쓰거나 읽는 등의 함수를 제공합니다. 
> 결국 SharedPreferences도 내부 저장소에 위치한 파일인데요, 앱에서만 접근 가능한 특수 목적 파일이라는 점에서 뒤에 나올 파일과 다릅니다.

<br/>

**SharedPreferences 사용법**

```
import 'package:shared_preferences/shared_preferences.dart';
```
우선 SharedPreferences를 사용하기 위해 shared_preferences 패키지를 불러옵니다.

```
SharedPreferences prefs = await SharedPreferences.getInstance(); // SharedPreferences 객체 생성

await prefs.setInt('counter', 10);          // setInt(key, value)
await.prefs.setBool('repeat', true);        // setBoolt(key, value)
await.prefs.setDouble('decimal', 1.5);      // setDouble(key, value)
await prefs.setString('action', 'Start');   // setString(key, value)
```
첫 번째, 데이터 쓰기입니다. 우선, SharedPreferences 객체를 생성합니다.
이후 각 자료형에 대한 setter를 이용하여 key-value쌍을 저장합니다.
이 때, 각 함수는 비동기로 처리합니다.

```
SharedPreferences prefs = await SharedPreferences.getInstance(); // SharedPreferences 객체 생성

int? counter = prefs.getInt('counter');
bool? repeat = prefs.getBool('repeat');
double? decimal = prefs.getDouble('decimal');
String? action = prefs.getString('action');
```
두 번째, 데이터 읽기입니다. 쓰기와 마찬가지로 먼저 SharedPreferences 객체를 생성합니다.
이후 가져오고자 하는 value에 대한 key를 getter에 넣어 해당 value를 가져옵니다.
만약, 존재하지 않는 경우엔 null값을 반환하므로 자료형 선언시 물음표를 붙여주는게 안전합니다.

```
SharedPreferences prefs = await SharedPreferences.getInstance(); // SharedPreferences 객체 생성

var success = await prefs.remove('counter'); 
```
마지막으로, 데이터 삭제입니다. remove(key)를 통해 해당 key를 갖는 데이터를 삭제할 수 있습니다.   

<br/>

<h3>09-2 파일에 데이터 저장하기</h3><br/>

**파일**
> 두 번째, 파일입니다. 
> 파일을 이용하여 데이터를 저장하는 경우 앞서 설명한 SharedPreferences를 이용하는 경우에 비해 더 복잡하고 데이터를 다룰 수 있다는 장점이 있습니다.

<br/>

**파일 사용법**

```
import 'dart:io';
import 'package:path_provider/path_provider.dart';
```
우선 파일을 사용하기 위해 dart:io와 path_provider 패키지를 불러옵니다. dart:io는 IO 관련 기능을 지원하며,
path_provider는 앱이 사용하는 저장공간에 접근할 수 있도록 돕습니다. <br/><br/>
path_provider를 사용할 때 Documents directory와 Temporary directory라는 용어가 등장하는데요,
Documents directory란 앱만의 저장공간을 말하며 iOS의 NSDocumentDirectory, Android의 AppDat에 해당하는 위치를 말합니다.
Temporary directory란 임시 디렉터리를 말하며 캐시를 이용하므로 앱 종료 후 일정 시간이 지나면 사라질 수 있는 저장공간으로
iOS의 NSCachesDirectory, Android의 getCacheDir()에 해당하는 위치입니다.

```
var dir = await getApplicationDocumentsDirectory();
File(dir.path + '/count.txt').writeAsStringSync('potato');
```
첫 번째, 데이터 쓰기입니다.
우선, path_provider 패키지 내 getApplicationDocumentsDirectory()를 호출하여 Documents directory 경로를 불러옵니다.
이 경로와 파일명을 이용하여 파일 객체를 만들고, writeAsStringSync()를 이용하여 해당 파일에 데이터를 작성합니다.

```
var dir = await getApplicationDocumentsDirectory();
var file = File(dir.path + '/count.txt').readAsString();
```
두 번째, 데이터 읽기입니다.
쓰기와 마찬가지로 먼저 Documents directory 경로를 불러옵니다.
이 경로와 파일명을 이용하여 파일 객체를 만들고, readAsString()을 이용하여 해당 파일의 내용을 불러옵니다.

