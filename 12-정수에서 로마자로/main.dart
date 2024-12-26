void main() {
  print(intToRoman(3749));
}

String intToRoman(int num) {
  // digit, roman
  Map<int, String> romanMap = {
    1000: 'M',
    900: 'CM',
    500: 'D',
    400: 'CD',
    100: 'C',
    90: 'XC',
    50: 'L',
    40: 'XL',
    10: 'X',
    9: 'IX',
    5: 'V',
    4: 'IV',
    1: 'I',
  };

  List<String> roman = [];

  romanMap.forEach(
    (key, value) {
      // num 에서 key 값으로 나눈 몫
      int divide = num ~/ key;

      for (int i = 1; i <= divide; i++) {
        roman.add(value);
      }
      // num 은 key 로 나눈 나머지로 업데이트
      num = num % key;
    },
  );

  return roman.join();
}
