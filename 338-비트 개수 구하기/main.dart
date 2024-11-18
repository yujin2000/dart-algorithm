void main() {}

List<int> countBits(int n) {
  List<int> bits = List.filled(n + 1, 0);
  for (int i = 0; i <= n; i++) {
    bits[i] = bits[i >> 1] + (i & 1);
  }
  return bits;
}
