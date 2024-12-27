void main() {
  print(threeSum([-1, 0, 1, 2, -1, -4]));
}

List<List<int>> threeSum(List<int> nums) {
  // 배열 정렬
  nums.sort();
  List<List<int>> result = [];

  int n = nums.length;

  for (int i = 0; i < n - 2; i++) {
    // 중복 값 건너뜀
    if (i > 0 && nums[i] == nums[i - 1]) continue;
    int iNum = nums[i];

    int left = i + 1;
    int right = n - 1;

    while (left < right) {
      int lValue = nums[left];
      int rValue = nums[right];
      int sum = iNum + lValue + rValue;

      if (sum == 0) {
        result.add([iNum, lValue, rValue]);
        // 중복 값 건너뜀
        while (left < right && nums[left] == nums[left + 1]) left++;
        while (left < right && nums[right] == nums[right - 1]) right--;
        left++;
        right--;
      } else if (sum < 0) {
        left++;
      } else if (sum > 0) {
        right--;
      }
    }
  }
  return result;
}
