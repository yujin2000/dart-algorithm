void main() {
  print(findDifference([1, 2, 3], [2, 4, 6]));
}

List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
  // list 를 set 으로 변환하여 중복된 값 제거
  Set<int> nums1Set = nums1.toSet();
  Set<int> nums2Set = nums2.toSet();

  // difference 메서드를 이용하여 nums1 과 nums2 의 차집합 구하기
  return [
    nums1Set.difference(nums2Set).toList(),
    nums2Set.difference(nums1Set).toList()
  ];
}
