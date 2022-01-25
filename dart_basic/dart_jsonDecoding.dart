import 'dart:convert';

void main() {
  var jsonString = '''
  [
    {"score": 90},
    {"score": 100}
  ]
  ''';
  
  //jsonDecode() 함수는 JSON 형태의 데이터를 dynamic 형식의 리스트로 변환해서 반환해준다
  var scores = jsonDecode(jsonString);  //JSON 형태의 문자열인 변수 jsonString을 jsonDecode() 함수에 전달하여 scores 변수에 저장  
  print(scores is List);             //scroes 변수가 리스트인지 확인
  var firstScore = scores[0];        //scores 리스트의 첫번째 값을 firstScore 변수에 저장, 이 값은 키(key)와 값(value)이 있는 Map 형태이다
  print(firstScore is Map);          //firstScore 변수가 Map인지 확인
  print(firstScore['score'] == 90);  //firstScore의 score 키에 해당하는 값이 90인지 확인, 실행결과: true
  print(firstScore['score'] == 100); //firstScore의 score 키에 해당하는 값이 100인지 확인, 실행결과: false
}

/* 실행결과 
true
true
true
false
*/