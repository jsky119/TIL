/*데이터를 순서대로 주고받을 것으로 생각하고 개발하는 과정에서
네트워크나 와이파이 연결 끊김, 특정 API 호출이 늦어져 순서가 달라지는 등의 문제로
앱이 원하는 흐름대로 작동하지 않을 수 있다.
이런 상황에 데이터를 차례대로 주고받고자 할 때 스트림(stream)을 이용한다.
스트림은 처음에 넣은 데이터가 꺼낼 때도 가장 먼저 나오는 데이터 구조로 생각할 수 있다. */

import 'dart:async';

Future<int> sumStream(Stream<int> stream) async {                                                                              //4
  var sum = 0;
  await for (var value in stream) {
    print('sumStream: $value');
    sum += value;
  }
  return sum;
}

// 스트림을 만드려면 async와 yield를 사용해야 한다. (스트림 형식을 반환할 때엔 async* 키워드를 붙여야 함)                             //2
Stream<int> countStream(int to) async* {  
  for (int i = 1; i <= to; i++) {         //for문을 이용해 1부터 int형 매개변수 to로 전달받은 숫자까지 반복
    print('countStream : $i');
    yield i;    
  }
}

/* async* 키워드는 앞으로 yield를 이용해 지속적으로 데이터를 전달하겠다는 의미, 제너레이터를 만든다는 뜻. 
제너레이터는 게으른 (lazily) 데이터 연산을 할 때 쓰인다. 게으르다는 것은 미리 연산을 다 하는게 아닌, 요청이 있을 때까지
연산을 미뤄 두었다가 필요할 때 처리하는 것을 뜻한다. */

/* yield는 return과 유사하면서 조금 다르다. 
return은 한 번 반환하면 함수가 종료되고, yield는 return과 달리 반환 후에도 계속 함수를 유지한다. */

main() async {
  var stream = countStream(10); //countStream(10) 함수 호출, async* 와 yield 키워드를 이용해 비동기 함수로 만들었음                //1
  var sum = await sumStream(stream);  //이렇게 받은 yield 값을 인자로 sumStream() 함수를 호출하여 이 값을 sum 변수에 누적해서 반환  //3
  print(sum);                                                                                                                  //5
}

/* 실행결과
countStream : 1
sumStream: 1
countStream : 2
sumStream: 2
countStream : 3
sumStream: 3
countStream : 4
sumStream: 4
countStream : 5
sumStream: 5
countStream : 6
sumStream: 6
countStream : 7
sumStream: 7
countStream : 8
sumStream: 8
countStream : 9
sumStream: 9
countStream : 10
sumStream: 10
55
*/