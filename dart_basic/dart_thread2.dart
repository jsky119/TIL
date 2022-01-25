void main() {
  printOne();
  printTwo();
  printThree();
}

void printOne() {
  print('One!');
}

void printThree() {
  print('Three!!!');
}

void printTwo() async {
  await Future.delayed(Duration(microseconds: 100), () {  //Future.delayed() 앞에 await 키워드가 붙었기 때문에 이후 코드의 실행이 멈춘다.
    print('Future!!!!');  //따라서 main() 함수의 나머지 코드를 실행한 뒤 await가 붙은 코드부터 차례대로 실행한다.
  });
  print('Two!!'); 
}

/* 실행결과
One!
Three!!!
Future!!!!
Two!!
*/