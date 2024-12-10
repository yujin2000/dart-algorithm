void main() {}

int findKthLargest(List<int> nums, int k) {
  nums.sort((a, b) => b.compareTo(a));

  return nums[k - 1];
}

// QuickSort
// 1. 피벗을 기준으로 2개의 리스트로 나눔
// 2. 피벗보다 작은 값은 왼쪽, 큰 값은 오른쪽으로 이동
int findKthLargest2(List<int> nums, int k) {
  int partition(int low, int high, int pivot) {
    // low 가 high 보다 작을 때까지 low 는 오른쪽으로 high 는 왼쪽으로 이동
    for (; low <= high; low++, high--) {
      // nums[low] 가 피벗보다 작으면 계속 low 오른쪽으로 이동
      for (; nums[low] < pivot; low++);
      // nums[high] 가 피벗보다 크면 계속 high 왼쪽으로 이동
      for (; nums[high] > pivot; high--);
      // low 가 high 보다 크면 제일 처음 for 문 break;
      if (low > high) break;
      // nums[low] 와 nums[high] 값 swap
      int temp = nums[low];
      nums[low] = nums[high];
      nums[high] = temp;
    }
    return low;
  }

  void quickSort(int low, int high) {
    if (low >= high) {
      return;
    }
    int pivot = nums[(low + high) ~/ 2];
    int index = partition(low, high, pivot);

    quickSort(low, index - 1); // low 부터 index - 1까지 정렬
    quickSort(index, high); // index 부터 high 까지 정렬
  }

  quickSort(0, nums.length - 1);

  // 오름차순으로 정렬되었으므로 k 번째
  return nums[nums.length - k];
}
