//Null safety
/*변수를 선언할 때 사용한다. 
자료형 뒤에 ?를 붙이면 Null이 가능, 붙이지 않으면 Null이 불가능 
식 다음에 !를 붙이면 Null이 아님을 직접 표시한다*/

int? nullTestFunc() => -3;  //null을 넣을 수 있음

void main() {
  int? nullTest = 1;  //null로 변경 가능
  List<int?> listWithNull = [2, null, 4]; //List의 int에 null 값 포함 가능
  List<int?> nullsList; //List 자체가 null일 수 있음
  int a = nullTest; //null을 넣으면 오류
  //int b = listWithNull.first; //int b는 ?가 없으므로 오류
  int b = listWithNull.first!;  //null이 아님을 직접 표시
  //int c = nullTestFunc().abs(); //null일 수도 있으므로 abs()에서 오류, abs(int n) 함수는 int n의 절대값을 리턴한다
  int c = nullTestFunc()!.abs(); //null이 아님을 직접 표시

  print('a is $a'); //a is 1
  print('b is $b'); //b is 2
  print('c is $c'); //c is 3
}