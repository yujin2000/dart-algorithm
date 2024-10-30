void main() {
  print(isSubsequence('ab', 'baab'));
}

bool isSubsequence(String s, String t) {
  // s 가 t 보다 길이가 길면 부분 수열 성립이 안됨
  if (s.length > t.length) {
    return false;
  }

  int sIndex = 0;
  int tIndex = 0;

  // t 순회
  for (int i = 0; i < t.length - 1; i++) {
    // s 와 t 를 하나씩 비교하여 같은 글자가 있으면 sIndex++
    if (s[sIndex] == t[tIndex]) {
      sIndex++;
    }
    tIndex++;
  }

  // sIndex 가 s.length 값과 같으면 s 의 모든 글자를 t 에서 순서대로 찾은 것
  return sIndex == s.length;
}
