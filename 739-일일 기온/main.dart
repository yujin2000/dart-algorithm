void main() {
  print(dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73]));
}

List<int> dailyTemperatures(List<int> temperatures) {
  var n = temperatures.length;
  if (n == 1) return [0];

  List<int> result = List.generate(n, (index) => 0);
  List<int> check = [];

  for (int i = 0; i < n; i++) {
    int temp = temperatures[i];

    // 현재 기온과 이전 기온을 비교하여 현재 기온이 이전 기온보다 높으면
    // 이전 기온의 값을 result 에 업데이트한다.
    while (check.isNotEmpty && temp > temperatures[check.last]) {
      int lastIndex = check.removeLast();
      result[lastIndex] = i - lastIndex;
    }
    // 현재 인덱스 추가
    check.add(i);
  }

  return result;
}
