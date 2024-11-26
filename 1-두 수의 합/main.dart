void main() {
  print(twoSum([2, 7, 11, 15], 9));
  print(twoSum([3, 2, 4], 6));
}

List<int> twoSum(List<int> nums, int target) {
  var n = nums.length;
  var result = [0, 0];

  for (int i = 0; i < n; i++) {
    var findValue = target - nums[i];
    for (int j = i + 1; j < n; j++) {
      if (findValue == nums[j]) {
        result[0] = i;
        result[1] = j;
        return result;
      }
    }
  }

  return result;
}
