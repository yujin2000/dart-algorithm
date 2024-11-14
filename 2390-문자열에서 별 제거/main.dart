void main() {
  // 'lecoe'
  print(removeStars('leet**cod*e'));
  // ''
  print(removeStars('erase*****'));
}

String removeStars(String s) {
  // 문자열을 배열로 변환
  List<String> strs = s.split('');
  List<String> result = [];

  for (String str in strs) {
    // str 이 * 이면 result 의 마지막 배열 제거
    if (str == '*') {
      result.removeLast();
    } else {
      result.add(str);
    }
  }
  // 문자열 배열을 문자열로 변환
  return result.join('');
}
