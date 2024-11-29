void main() {}

bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  // 문자열을 배열로 만들기
  var ss = s.split('');
  var tt = t.split('');

  // 정렬
  ss.sort();
  tt.sort();

  // 다시 합쳐서 문자열이 다른지 확인
  return ss.join() == tt.join();
}

// 시간 초과함...
bool isAnagram_fail(String s, String t) {
  // 두 문자열의 길이가 다르면 false
  if (s.length != t.length) return false;

  var tList = t.split('');

  for (int i = 0; i < s.length; i++) {
    // tList 에서 s[i] 가 지워지지 않으면 return false
    if (!tList.remove(s[i])) {
      return false;
    }
  }

  // 비어있는지 확인하여 없으면 true
  return tList.isEmpty;
}
