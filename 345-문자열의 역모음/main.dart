void main() {
  String s = 'leetcode';
  List<String> strList = s.split('');
  Set<String> moem = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};

  int left = 0;
  int right = strList.length - 1;

  // 왼쪽 포인터가 오른쪽 포인터보다 작을 때까지만
  while (left < right) {
    // 왼쪽 포인터에 모음이 없으면 계속 오른쪽으로 이동
    if (moem.contains(strList[left])) {
      // 오른쪽 포인터에 모음이 없으면 계속 왼쪽으로 이동
      while (!moem.contains(strList[right])) {
        right--;
      }
      // 왼쪽 오른쪽 둘 다 모음을 찾았을 때 서로의 값 교환
      if (moem.contains(strList[right])) {
        String temp = strList[left];
        strList[left] = strList[right];
        strList[right] = temp;
        // 교환 후 오른쪽 포인터 이동
        right--;
      }
    }
    left++;
  }

  // 문자열로 다시 조합
  print(strList.join(''));
}
