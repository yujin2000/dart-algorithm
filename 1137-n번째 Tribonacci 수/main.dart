void main() {
  print(tribonacci(4));
}

int tribonacci(int n) {
  if (n == 0) return 0;
  if (n <= 2) return 1;

  // 초기값 지정
  int T0 = 0;
  int T1 = 1;
  int T2 = 1;

  int T3 = T2 + T1 + T0;
  for (int i = 3; i <= n; i++) {
    T3 = T2 + T1 + T0;
    T0 = T1;
    T1 = T2;
    T2 = T3;
  }

  return T3;
}
