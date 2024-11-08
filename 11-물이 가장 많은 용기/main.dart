import 'dart:math';

void main() {
  print(maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]));
}

int maxArea(List<int> height) {
  int left = 0;
  int right = height.length - 1;
  // 최대용량을 찾을 그릇
  int maxArea = 0;

  while (left < right) {
    int leftValue = height[left];
    int rightValue = height[right];

    int h = min(leftValue, rightValue); // 높이
    int width = right - left; // 넓이

    // 용량 계산(높이 * 넓이)한 값과 최대 용량과 비교
    maxArea = max(h * width, maxArea);

    // 막대기가 큰 쪽으로 이동
    leftValue < rightValue ? left++ : right--;
  }

  return maxArea;
}
