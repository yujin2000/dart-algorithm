void main() {
  print(pivotIndex([2, 1, -1]));
}

int pivotIndex(List<int> nums) {
  // 전체 합계
  int totalSum = nums.reduce((pre, post) => pre + post);
  // 왼쪽에서부터 누적 합계
  int leftSum = 0;
  for (int i = 0; i < nums.length; i++) {
    // 왼쪽 합계와 오른쪽(i 기준) 합계가 같으면 해당 인덱스 반환
    if (leftSum == (totalSum - nums[i])) {
      return i;
    }
    leftSum += nums[i];
    totalSum -= nums[i];
  }
  // 없으면 -1 반환
  return -1;
}
