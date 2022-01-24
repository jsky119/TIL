void main() async{
  await getVersionName().then((value)=> { //비동기 함수가 반환하는 값을 처리하기 위해 then 함수 사용
    print(value)
  });
  print('end process');
}

Future<String> getVersionName() async { //getVersionName()은 비동기로 처리
  var versionName = await lookUpVersionName();  
  return versionName;
}

String lookUpVersionName() {
  return 'Android Q';
}
/* 
1. main()에서 getVersionName()을 실행, then()이 쓰였기 때문에 getVersionName()이 반환한 값을 사용하게 됨.
2. lookUpVersionName()은 'Android Q'를 return하는데 이것은 getVersionName() 내부에서 versionName에 할당하여 사용한다.
3. 'Android Q'를 할당한 versionName은 getVersionName과 함께 main()으로 전달되어 이 값이 print()를 이용하여 Android Q가 출력된다. 
4. print()를 이용한 end process가 출력되며 종료
*/

/* 실행 결과 
Android Q
end process */