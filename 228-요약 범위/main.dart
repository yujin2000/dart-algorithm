void main() {}

List<String> summaryRanges(List<int> nums) {
  // 비어있을 떄
  if (nums.isEmpty) return [];

  List<String> result = [];
  int n = nums.length;
  int preValue = nums[0];

  for (int i = 0; i < n; i++) {
    if (i == n - 1 || nums[i] + 1 != nums[i + 1]) {
      if (preValue == nums[i]) {
        // 범위가 안늘어난 경우
        result.add(preValue.toString());
      } else {
        // 늘어난 경우
        result.add('$preValue->${nums[i]}');
      }

      // 다음 값으로
      if (i != n - 1) {
        preValue = nums[i + 1];
      }
    }
  }

  return result;
}
