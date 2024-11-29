void main() {}

int removeElement(List<int> nums, int val) {
  // val 과 같은 값 지우기
  nums.removeWhere((value) => value == val);
  return nums.length;
}
