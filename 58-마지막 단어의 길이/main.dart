void main() {
  print(lengthOfLastWord("   fly me   to   the moon  "));
  print(lengthOfLastWord2("   fly me   to   the moon  "));
}

int lengthOfLastWord(String s) {
  var strs = s.split(' ');
  var n = strs.length;

  var lastWord = '';
  for (int i = n - 1; i >= 0; i--) {
    lastWord = strs[i];
    if (lastWord.length > 0) break;
  }
  return lastWord.length;
}

int lengthOfLastWord2(String s) {
  // trim 사용하면 양 끝의 띄어쓰기 없앰
  var strs = s.trim().split(' ');
  return strs[strs.length - 1].length;
}
