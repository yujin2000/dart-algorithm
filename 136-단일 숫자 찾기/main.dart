void main() {}

// nums 길이가 1 일때 0 번째 요소 반환
// nums 길이가 2 이상일 때
// nums 를 하나씩 순회하면서 배열에서 마지막 요소의 위치와 다르면 그 숫자가 singleNumber
int singleNumber(List<int> nums) {
  if (nums.length == 1) return nums[0];

  List<int> dupliNums = [];

  for (int i = 0; i < nums.length; i++) {
    int num = nums[i];
    if (i == nums.lastIndexOf(num) && !dupliNums.contains(num)) {
      return num;
    } else {
      dupliNums.add(num);
    }
  }
  return 0;
}
