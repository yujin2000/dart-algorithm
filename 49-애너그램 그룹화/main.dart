void main() {
  print(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]));
}

List<List<String>> groupAnagrams(List<String> strs) {
  // strs 길이가 1 이하일 경우
  if (strs.length <= 1) return [strs];

  // 문자열 키, 문자열
  Map<String, List<String>> pattern = {};

  for (int i = 0; i < strs.length; i++) {
    var str = strs[i];

    // sort 한 값을 key 값으로 사용
    var strSort = str.split('');
    strSort.sort();

    pattern.update(strSort.join(), (value) => [str, ...value],
        ifAbsent: () => [str]);
  }
  return pattern.values.toList();
}
