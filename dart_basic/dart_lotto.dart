import 'dart:math' as math;

void main() {
  List<int> numList = [];  

  while(true) {
    //무작위 숫자를 생성, 숫자 생성 시 0~44까지의 45개 중 임의의 숫자를 생성하기 때문에 + 1 해줌
    var lottoNum = math.Random().nextInt(45) + 1;        
    //리스트와 생성한 숫자를 비교하여 리스트에 없는 숫자라면
    if(!numList.contains(lottoNum)) {
      //생성한 숫자를 리스트에 추가
      numList.add(lottoNum);
    }
    // 리스트의 길이가 6이면 while문을 종료
    if(numList.length == 6) break;
  }
  //sort() 함수를 이용하여 list 정렬
  numList.sort();
  //무작위로 생성한 숫자 6개를 가지고 있는 리스트 출력
  print(numList);   
}