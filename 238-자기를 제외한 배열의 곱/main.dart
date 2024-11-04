void main() {
  print(productExceptSelf([1, 2, 3, 4]));
}

List<int> productExceptSelf(List<int> nums) {
  // 1 로 채운 리스트 생성 [1, 1, 1, ...]
  List<int> result = List.filled(nums.length, 1);

  // 왼쪽에서부터 곱한 값 모으기
  int leftValue = 1;
  for (int i = 0; i <= nums.length - 1; i++) {
    result[i] = leftValue;
    leftValue *= nums[i];
  }
  // 오른쪽에서부터 곱한 값 모으기
  int rightValue = 1;
  for (int i = nums.length - 1; i >= 0; i--) {
    result[i] *= rightValue;
    rightValue *= nums[i];
  }
  return result;
}
