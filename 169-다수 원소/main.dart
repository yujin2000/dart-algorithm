void main() {
  print(majorityElement([2, 2, 1, 1, 1, 2, 2]));
  print(majorityElement([6, 5, 5]));
}

int majorityElement(List<int> nums) {
  int length = nums.length ~/ 2;
  Map<int, int> count = {};

  for (int n in nums) {
    int value = count.putIfAbsent(n, () => 0) + 1;
    count[n] = value;
    if (value > length) {
      return n;
    }
  }

  return 0;
}
