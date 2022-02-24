# internal_example

<h3>SharedPreferences에 데이터 저장하기</h3>

**SharedPreferences**

>플러터에서 앱의 데이터를 저장하기 위해서는 SharedPreferences 또는 파일, 데이터베이스를 이용하면 됩니다. 
이때, **SharedPreferences**란 로컬에 데이터를 저장하기 위해 사용하는 패키지를 말합니다. 
해당 패키지는 key-value 쌍으로 구성된 파일을 가리키며 이 파일의 데이터를 읽거나 쓰는 함수를 제공합니다. 
파일 내 key는 고유한 값이어야 하며, value는 int, String, bool, double 등의 자료형을 가질 수 있습니다.
앞서 말하였듯이 SharedPreferences도 결국 내부 저장소에 위치한 파일이지만, 
해당 파일은 앱에서만 접근할 수 있는 특수 목적 데이터 저장소라는 점에서 뒤에 배울 파일에 저장하는 방법과 차이가 있습니다.

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


