void main() {
  List<int> flowerbed = [1, 0, 0, 0, 1];
  int n = 1;
  print(canPlaceFlowers(flowerbed, n));
}

bool canPlaceFlowers(List<int> flowerbed, int n) {
  // 꽃이 심어진 개수
  int flowerCount = 0;
  int length = flowerbed.length;

  // 첫번째 인덱스
  // 첫번째 인덱스와 두번째 인덱스에 꽃이 심어져 있지 않으면 첫번째에 꽃을 심는다.
  if (flowerbed[0] == 0 && flowerbed[1] == 0) {
    flowerbed[0] = 1; // 꽃 심기
    flowerCount++;
    if (flowerCount >= n) {
      // flowerCount 가 심어야할 꽃 개수(n) 보다 크면 true 반환
      return true;
    }
  }

  // 두번째 인덱스부터 마지막 - 1 인덱스까지
  for (int i = 1; i < length - 2; i++) {
    // i 와 양 옆을 확인하여 꽃이 심어져 있지 않으면 i 번째에 꽃을 심는다.
    if (flowerbed[i] == 0 && flowerbed[i - 1] == 0 && flowerbed[i + 1] == 0) {
      flowerbed[i] = 1;
      flowerCount++;
      if (flowerCount >= n) {
        return true;
      }
    }
  }

  // 마지막 인덱스
  // 마지막 인덱스와 이 전 인덱스에 꽃이 심어져 있지 않으면 마지막 인덱스에 꽃을 심는다.
  if (flowerbed[length - 1] == 0 && flowerbed[length - 2] == 0) {
    flowerbed[length - 1] == 1;
    flowerCount++;
    if (flowerCount >= n) {
      return true;
    }
  }
  return false;
}
