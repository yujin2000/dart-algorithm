import 'dart:math';

void main() {}

int maxProfit(List<int> prices) {
  int maxValue = 0;
  var minValue = double.infinity;
  for (var price in prices) {
    minValue = min(price.toDouble(), minValue);
    if (price > minValue) {
      var v = price - minValue;
      maxValue = max(v.toInt(), maxValue);
    }
  }
  return maxValue;
}
