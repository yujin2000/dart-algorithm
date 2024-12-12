import 'dart:math';

void main() {
  print(canJump([3, 2, 1, 0, 4]));
}

bool canJump(List<int> nums) {
  if (nums.length == 1) return true;

  // 최대 도달할 수 있는 점프
  int maxJump = 0;
  for (int i = 0; i < nums.length - 1; i++) {
    // 현재 위치에서 도달할 수 있는 점프
    int jump = i + nums[i];
    // 최대 도달 거리 측정
    maxJump = max(maxJump, jump);
    // 현재 위치보다 maxJump 가 작거나 같다면 마지막 인덱스까지 가지 못하므로 false 반환
    if (maxJump <= i) {
      return false;
    }
  }
  return true;
}
