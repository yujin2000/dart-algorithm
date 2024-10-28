void main() {
  List<int> candies = [2, 3, 5, 1, 3];
  int extraCandies = 3;

  // 가장 많은 사탕의 개수
  // candies 에서 각 list 값을 비교하여 더 큰 값을 maxCandies 에 반환함
  int maxCadies = candies.reduce((a, b) => a > b ? a : b);
  // candies 를 한 번씩 순회해서 원소값 + extraCandies 이
  // maxCandies 값보다 큰 경우 true 아니면 false
  List<bool> result =
      candies.map((candy) => candy + extraCandies >= maxCadies).toList();
  print(result);
}

void anotherExample() {
  List<int> candies = [2, 3, 5, 1, 3];
  int extraCandies = 3;

  int maxCandy = 0;
  for (int candy in candies) {
    if (maxCandy < candy) {
      maxCandy = candy;
    }
  }

  List<bool> result =
      candies.map((candy) => candy + extraCandies >= maxCandy).toList();

  print(result);
}
