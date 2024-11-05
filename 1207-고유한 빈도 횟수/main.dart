void main() {
  print(uniqueOccurrences([1, 2]));
}

bool uniqueOccurrences(List<int> arr) {
  // key: 배열 숫자 value: 배열 숫자의 빈도
  Map<int, int> arrCount = {};
  for (int i in arr) {
    // 배열 원소가 이미 있는 경우 value 업데이트
    arrCount[i] = arrCount.putIfAbsent(i, () => 0) + 1;
  }

  // value 값 list 로 변환
  List<int> valueList = arrCount.values.map((e) => e).toList();
  // list 를 set 으로 중복 제거
  Set<int> valueSet = valueList.toSet();
  // 두 collection 의 길이가 같으면 빈도 고유, 다르면 빈도 고유 X
  return valueList.length == valueSet.length;
}
