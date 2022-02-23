# chapter02

**다트 언어의 9가지 특징**

1. main() 함수로 시작한다.
   ```{dart}
   // 함수 정의
   printInteger(int number) {
    print('The number is $number');
   }
   
   // 실행
   main() {
    printInteger(42);
   }
   ```
   
2. 어디에서나 변수를 선언하고 사용할 수 있다.

3. 모든 변수가 객체이다. 그리고 모든 객체는 Object 클래스를 상속받는다.

4. 자료형이 엄격한 언어이다. 변수에 지정한 자료형과 다른 유형의 값을 저장하면 오류가 발생한다. 만약 여러 자료형을 허용하려면 dynamic 타입을 이용할 수 있다.
   <table align="center">
        <tr>
            <td>구분</td>
            <td>자료형</td>
            <td>설명</td>
        </tr>
        <tr>
            <td rowspan="3">숫자</td>
            <td>int</td>
            <td>정수형 숫자</td>
        </tr>
        <tr>
            <td>double</td>
            <td>실수형 숫자</td>
        </tr>
        <tr>
            <td>num</td>
            <td>정수형 또는 실수형 숫자</td>
        </tr> 
        <tr>
            <td>문자열</td>
            <td>String</td>
            <td>텍스트 기반 문자</td>
        </tr>        
        <tr>
            <td>불리언</td>
            <td>bool</td>
            <td>True 또는 False</td>
        </tr>
        <tr>
            <td rowspan="2">자료형 추론</td>
            <td>var</td>
            <td>입력받은 값에 따라 자료형 결정. 한 번 결정된 자료형은 변경 불가</td>
        </tr>
        <tr>
            <td>dynamic</td>
            <td>입력받은 값에 따라 자료형 결정. 다른 변수 입력하면 자료형 변경 가능</td>
        </tr>
   </table>
5. 제네릭 타입을 이용해 개발할 수 있다.

6. public, protected와 같은 키워드가 없다. 외부로 노출하고 싶지 않은 경우, 변수나 함수 이름 앞에 언더스코어(_)를 이용해 표시할 수 있다.

7. 변수나 함수는 언더스코어 또는 문자열로 시작하고 그 이후에 숫자를 입력할 수 있다.

8. 삼항 연산자를 사용할 수 있다.
   ```{dart}
      // isPublic이 True이면 'public'을, False이면 'private'를 반환
      var visibility = isPublic ? 'public' : 'private';
      // 매개변수로 전달받은 name이 null이면 'Guest'를 반환하고, null이 아니면 name을 반환
      String playerName(String name) => name ?? 'Guest';
   ```
   
9. Null safety를 지원한다.
   >   Null safety는 변수를 사용할 때 사용하는 것으로 자료형 다음에 ?를 붙이면 Null이 가능하고 붙이지 않으면 Null이 불가능하다. 식 다음에 !를 붙이면 Null이 아님을 직접 표시한다.   

**다트 언어의 문법**

&nbsp;&nbsp;&nbsp;정리본 &nbsp;👉🏻&nbsp; [🔖](https://front-end.tistory.com/57)
