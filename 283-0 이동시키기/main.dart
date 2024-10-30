void main() {
  moveZeroes([0, 1, 0, 3, 12]);
}

void moveZeroes(List<int> nums) {
  int left = 0;
  int right = left + 1;

  // nums 길이가 1 이거나 모든 원소가 0 이면 바로 return
  if (nums.length == 1 || nums.every((num) => num == 0)) {
    return;
  }

  // left 가 nums 길이 넘어가기 전까지 순회
  while (left < nums.length - 1) {
    // left 에서 0 을 찾기
    if (nums[left] == 0) {
      // 0 이 아닌 right 와 swap
      while (right < nums.length - 1 && nums[right] == 0) {
        right++;
      }
      int temp = nums[left];
      nums[left] = nums[right];
      nums[right] = temp;
    }
    left++;
    right = left + 1;
  }

  print(nums);
}

void moveZeroes2(List<int> nums) {
  int zero = 0;

  // 0 이 아닌 원소를 배열의 앞 부분으로 이동
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[zero] = nums[i];
      zero++;
    }
  }
  // zero (0 이 아닌 원소의 개수) 부터 nums 마지막까지 0 으로 변경
  for (int i = zero; i < nums.length; i++) {
    nums[i] = 0;
  }

  print(nums);
}
