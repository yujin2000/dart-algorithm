void main() {
  print(compress(["a", "a", "a", "b", "b", "a", "a"]));
  print(compress(["a", "b", "c"]));
}

int compress(List<String> chars) {
  // 문자가 바뀌는 지점의 index
  int changeIndex = 0;
  // 확인할 char
  String checkChar = chars[0];
  // chars 의 변경되고 난 후의 마지막 위치
  int lastIndex = 0;

  for (int i = 0; i <= chars.length; i++) {
    // 마지막 배열 체크
    if (i == chars.length) {
      int length = i - changeIndex;
      // chars 문자열 업데이트
      chars[lastIndex] = checkChar;
      lastIndex++;
      // 연속된 문자가 1 이면 숫자 업데이트 X
      if (length > 1) {
        // 연속된 문자가 두자리 수를 넘어가면 split 해서 한 문자씩 업데이트
        length.toString().split('').forEach((e) {
          chars[lastIndex] = e;
          lastIndex++;
        });
      }
      break;
    }

    // 앞 배열 요소와 현재 배열 요소가 다르거나 마지막 인덱스이면
    // 연속된 문자의 배열 길이(length) 를 구해서
    // chars 에 배열 요소와 연속된 배열 길이를 업데이트
    if (checkChar != chars[i]) {
      String currentChar = chars[i];
      // 연속된 문자의 배열 길이
      // ex) ['a', 'a', 'a', 'b', 'b']
      // i == 3 => 3 - 0 => 3
      int length = i - changeIndex;

      // chars 문자열 업데이트
      chars[lastIndex] = checkChar;
      lastIndex++;
      // 연속된 문자가 1 이면 숫자 업데이트 X
      if (length > 1) {
        // 연속된 문자가 두자리 수를 넘어가면 split 해서 한 문자씩 업데이트
        length.toString().split('').forEach((e) {
          chars[lastIndex] = e;
          lastIndex++;
        });
      }

      checkChar = currentChar;
      changeIndex = i;
    }
  }

  // 업데이트 된 마지막 인덱스부터 끝까지 remove
  chars.removeRange(lastIndex, chars.length);

  return chars.length;
}

int compress2(List<String> chars) {
  int lastIndex = 0;
  int i = 0;

  while (i < chars.length) {
    String currentChar = chars[i];
    int count = 0; // 연속된 문자의 수

    while (i < chars.length && chars[i] == currentChar) {
      i++;
      count++;
    }

    // 문자열 덮어쓰기
    chars[lastIndex++] = currentChar;

    if (count > 1) {
      count.toString().split('').forEach((e) => chars[lastIndex++] = e);
    }
  }

  // chars 의 길이를 lastIndex 로 새롭게 지정
  chars.length = lastIndex;
  return lastIndex;
}
