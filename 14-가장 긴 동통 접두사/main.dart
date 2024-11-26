void main() {
  print(longestCommonPrefix(["dog", "racecar", "car"]));
}

String longestCommonPrefix(List<String> strs) {
  String prefix = strs[0];

  for (int i = 1; i < strs.length; i++) {
    while (prefix != '' && !strs[i].startsWith(prefix)) {
      prefix = prefix.substring(0, prefix.length - 1);
    }
    if (prefix == '') return prefix;
  }

  return prefix;
}
