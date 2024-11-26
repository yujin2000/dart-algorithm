void main() {
  var pattern = 'abba';
  var s = 'dog cat cat dog';
  print(wordPattern(pattern, s));
}

bool wordPattern(String pattern, String s) {
  List<String> strs = s.split(' ');
  Map<String, String> patToStr = {};
  Map<String, String> strToPat = {};

  // 두 문자열의 길이가 다르면 바로 false
  if (pattern.length != strs.length) {
    return false;
  }

  for (int i = 0; i < strs.length; i++) {
    var pat = pattern[i];
    var str = strs[i];

    if (patToStr.containsKey(pat)) {
      if (patToStr[pat] != str) return false;
    } else {
      patToStr.putIfAbsent(pat, () => str);
    }

    if (strToPat.containsKey(str)) {
      if (strToPat[str] != pat) return false;
    } else {
      strToPat.putIfAbsent(str, () => pat);
    }
  }

  return true;
}
