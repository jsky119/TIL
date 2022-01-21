//var visibility = isPublic ? 'public' : 'private'; 
// //dart의 삼항연산자, isPublic이 참이면 public 참이 아니면 private를 반환하여 visibility에 지정

String playerName(String name) => name ?? 'guest'; 
//매개변수로 전달받은 name이 null이면 guest를 반환하고, 아니면 매개변수로 전달 받은 값을 그대로 반환

//함수 정의
printInteger(int aNumber){
  print('The number is $aNumber');
}

//main() 함수에서 시작
void main() {
  var number = 119;     //동적 타입 변수 지정
  printInteger(number); //함수 호출
}

