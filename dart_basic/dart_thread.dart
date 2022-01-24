void main() {
  printOne();
  printTwo();
  printThree();
}

void printOne() {
  print('One!');
}

void printThree() {
  print('Three!!!');  //Future!!!!의 출력이 지연된 시간동안 Three!!!의 출력이 실행
}

void printTwo() async {
  Future.delayed(Duration(seconds: 1), () { //Duration만큼 지연되기 때문에 1초 후 Future!!!!가 출력된다
    print('Future!!!!');
  });
  print('Two!!'); //printTwo()는 async가 쓰였기 때문에 Future!!!!의 출력이 지연되는 동안 Two!!가 먼저 출력된다
}

/* 실행결과
One!
Two!!
Three!!!
Future!!!!
*/