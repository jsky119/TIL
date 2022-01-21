//dart의 비동기(asynchronous) 처리

/*
1. 함수 이름 뒤, 본문이 시작하는 중괄호 { 앞에 async 키워드를 붙여 비동기로 만든다.
2. 비동기 함수 안에서 언제 끝날지 모르는 작업 앞에 await 키워드를 붙인다.
3. 2번 작업을 마친 결과를 받기 위해 비동기 함수 이름 앞에 Future(값이 여러 개면 Stream) 클래스를 지정한다.

동기 방식 : 작업을 순차적으로 처리
비동기 처리 : 어떤 작업이 끝나기를 기다리지 않고 다른 작업을 처리
*/

void main(){
  checkVersion();
  print('end process');
}

Future checkVersion() async { //Future와 async 키워드를 이용, checkVersion 함수를 비동기로 만듦
  var version = await lookUpVersion();  //await 키워드는 처리를 완료하고 결과를 반환할 떄까지 이후 코드의 처리를 멈춘다
  print(version);
}
/*await가 붙은 함수를 따로(비동기로) 처리한 다음 Future 클래스에 저장할테니
checkVersion() 함수를 호출한 main() 함수의 나머지 코드를 실행하라는 의미 */

int lookUpVersion(){
  return 999;
}

/*실행 결과 
end process
999
*/