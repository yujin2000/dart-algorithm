void main() {
  print(removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]));
}

int removeDuplicates(List<int> nums) {
  int lastIndex = 0;
  int i = 0;
  while (i < nums.length && lastIndex < nums.length) {
    int element = nums[i];
    if (nums[lastIndex] != element) {
      nums[++lastIndex] = element;
    }
    i++;
  }

  nums.removeRange(lastIndex + 1, nums.length);

  return lastIndex + 1;
}


// https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150