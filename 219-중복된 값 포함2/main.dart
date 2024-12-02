void main() {
  print(containsNearbyDuplicate([2, 2], 3));
}

bool containsNearbyDuplicate(List<int> nums, int k) {
  for (int i = 0; i < nums.length; i++) {
    // k 보다 작은 값
    int j = 1;

    // nums 순회 돌면서 i 부터 i + k 사이의 값 확인
    while (j <= k && i + j < nums.length) {
      var n1 = nums[i];
      var n2 = nums[i + j];
      // 같은 숫자가 있으면 true
      if (n1 == n2) return true;
      j++;
    }
  }

  return false;
}

bool containsNearbyDuplicate2(List<int> nums, int k) {
  // 중복된 값을 체크할 집합
  Set<int> window = {};
  int left = 0;

  for (int right = 0; right < nums.length; right++) {
    // right - left 값이 k 보다 크면 window 에서 이전 값 지워서
    // window 는 k 크기를 넘어가지 않는 창문을 만든다.
    if (right - left > k) {
      window.remove(nums[left]);
      left++;
    }

    int value = nums[right];
    // window 에 포함되어 있으면 중복된 값이므로 true
    if (window.contains(value)) return true;

    // 창문에 현재 값 추가
    window.add(value);
  }
  return false;
}
