import 'dart:io';

void main() {
  String? str1 = stdin.readLineSync();
  String? str2 = stdin.readLineSync();
  print(gcdOfStrings(str1!, str2!));
}

String gcdOfStrings(String str1, String str2) {
  // 두 문자열을 이어 붙였을 때 결과가 같지 않으면 공통 문자열이 없는 것
  if (str1 + str2 != str2 + str1) {
    return '';
  }

  // 두 문자열 길이의 최대 공약수를 구함
  // b 가 0 이면 a, 0 이 아니면 재귀적으로 함수 호출을 다시 함
  int gcd(int a, int b) {
    return b == 0 ? a : gcd(b, a % b);
  }

  // str1과 str2의 길이의 최대 공약수 만큼 문자열의 앞부분을 반환
  int gcdLength = gcd(str1.length, str2.length);
  return str1.substring(0, gcdLength);
}
