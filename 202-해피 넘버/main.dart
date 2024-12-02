void main() {}

bool isHappy(int n) {
  // 중복 체크용 set
  Set<int> dupli = {};

  // n 이 1이거나 중복된 값이 포함되면 반복문 종료
  while (n != 1 && !dupli.contains(n)) {
    dupli.add(n);
    n = getSum(n);
  }

  // n 이 1 이면 true
  return n == 1;
}

/// 각 자리수 제곱해서 더한 값
int getSum(int num) {
  int sum = 0;
  while (num > 0) {
    int digit = num % 10; // 현재 자리
    sum += digit * digit; // 현재 자리 제곱한 값 sum 에 누적
    num ~/= 10; // 다음 자리
  }
  return sum;
}
