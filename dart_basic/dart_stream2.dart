//then() 함수를 활용한 스트림 예제
main() {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5]);  //Stream 클래스를 이용해 배열을 만든 후 함수를 이용해 값을 가져옴

  //가장 앞의 데이터 결과: 1
  //stream.first.then((value) => print('first: $value'));
  //가장 마지막의 데이터 결과: 5
  //stream.last.then((value) => print('last: $value'));
  //현재 스트림이 비어 있는지 확인
  //stream.isEmpty.then((value) => print('isEmpty: $value'));
  //전체 길이: 5
  stream.length.then((value) => print('length: $value'));  

  //스트림을 통해 데이터를 사용하면 데이터는 사라진다.(일회용)
}