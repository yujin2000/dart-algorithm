import 'dart:math';

void main() {
  print(lengthOfLongestSubstring("dvdf"));
  print(lengthOfLongestSubstring("abba"));
}

int lengthOfLongestSubstring(String s) {
  int start = 0;
  int last = 0;
  int maxLength = 0;
  // 중복 저장 key: 중복 체크할 문자, value: 문자열의 index
  Map<String, int> repeat = {};

  for (int i = 0; i < s.length; i++) {
    last = i;
    String current = s[last];

    // 중복 체크
    if (repeat.containsKey(current) && repeat[current]! >= start) {
      // start 를 중복된 값의 index + 1
      start = repeat[current]! + 1;
    }

    // 현재 문자열 추가
    repeat.addAll({current: last});

    // 최대 길이 확인
    maxLength = max((last - start + 1), maxLength);
  }

  return maxLength;
}
