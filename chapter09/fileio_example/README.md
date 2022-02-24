# fileio_example

<h3>파일에 데이터 저장하기</h3>

**파일**
> 앞서 SharedPreferences에 대해 설명하며 파일과의 차이를 언급했는데요,
> 그 뿐만 아니라 파일을 이용하는 경우 SharedPreferences를 이용하는 경우보다 
> 더 복잡하고 다양한 데이터를 다룰 수 있다는 점에서 차이가 있습니다.

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