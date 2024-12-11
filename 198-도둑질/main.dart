import 'dart:math';

void main() {}

int rob(List<int> nums) {
  if (nums.length == 1) return nums[0];

  int secondPrev = 0; // 두 번째 전까지 금액
  int firstPrev = 0; // 첫 번째 전까지 금액

  for (int i = 0; i < nums.length; i++) {
    int t = firstPrev;
    // 바로 전까지 금액과 두 번째 전까지 금액 + 현재 금액 중 큰 값 고르기
    firstPrev = max(firstPrev, secondPrev + nums[i]);
    // 다음 순회를 위해서 값 이동
    secondPrev = t;
  }

  return firstPrev;
}
