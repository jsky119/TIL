import 'dart:convert';

void main() {
  var scores = [
    {'score': 40},
    {'score': 80},
    {'score': 100, 'overtime': true, 'special_guest': null}
  ];  //{'score':40}의 형식으로 작은 따옴표를 이용해 변수임을 표시

  var jsonText = jsonEncode(scores);  //scores 데이터를 인자로 jsonEncode() 함수를 호출해 jsonText 변수에 저장
  print(jsonText); 
  print(jsonText ==
    '[{"score":40},{"score":80},{"score":100,"overtime":true,"special_guest":null}]');
} //jsonEncode() 함수는 키값을 큰 따옴표, 전체 데이터를 작은 따옴표로 묶어서 JSON 형태로 변환해준다

/* 실행결과 
[{"score":40},{"score":80},{"score":100,"overtime":true,"special_guest":null}]
true
*/