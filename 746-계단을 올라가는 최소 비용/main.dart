void main() {}
int minCostClimbingStairs(List<int> cost) {
  int length = cost.length;
  // 계단이 2개인 경우 최소값 반환
  if (length == 2) {
    return cost.reduce((a, b) => a < b ? a : b);
  }

  List<int> result = List<int>.filled(length, 0);
  result[0] = cost[0];
  result[1] = cost[1];

  for (int i = 2; i < length; i++) {
    int value = result[i - 1] < result[i - 2] ? result[i - 1] : result[i - 2];
    result[i] = cost[i] + value;
  }

  return result[length - 1] < result[length - 2]
      ? result[length - 1]
      : result[length - 2];
}
