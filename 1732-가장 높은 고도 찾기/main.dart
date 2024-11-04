import 'dart:math';

void main() {
  print(largestAltitude([-4, -3, -2, -1, 4, 3, 2]));
}

int largestAltitude(List<int> gain) {
  int maxAltitude = 0;
  int accumulated = 0; // 누적된 고도
  for (int g in gain) {
    accumulated += g;
    maxAltitude = max(maxAltitude, accumulated); // 누적 고도와 비교하여 max 값 찾기
  }
  return maxAltitude;
}
