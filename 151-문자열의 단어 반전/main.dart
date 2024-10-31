void main() {
  print(reverseWords('  hello world  '));
}

String reverseWords(String s) {
  List<String> reversedStrs = s.split(' ').reversed.toList();
  List<String> result = [];
  for (String str in reversedStrs) {
    // 빈 문자열이 아닌 경우
    if (str != '' && str != ' ') {
      //
      str = str.replaceAll(' ', '');
      result.add(str);
    }
  }
  // 문자열 배열을 띄어쓰기 하여 문자열로 join
  return result.join(' ');
}
