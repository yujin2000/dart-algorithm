void main() {
  rotate([-1, -100, 3, 99], 2);
  rotate([1, 2, 3, 4, 5, 6, 7], 3);
}

void rotate(List<int> nums, int k) {
  int n = nums.length;

  // k 를 nums length 로 나눈 몫이 0 이면 이동할 필요 없음
  if (k % n == 0) return;

  // k
  k = k % n;

  List<int> kList = [];
  for (int i = n - k; i < n; i++) {
    kList.add(nums[i]);
  }

  for (int i = n - k - 1, j = n; i >= 0; i--, j--) {
    nums[j - 1] = nums[i];
  }

  for (int i = 0; i < kList.length; i++) {
    nums[i] = kList[i];
  }
}
