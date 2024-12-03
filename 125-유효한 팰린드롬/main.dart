void main() {
  print(isPalindrome("A man, a plan, a canal: Panama"));
}

bool isPalindrome(String s) {
  List<String> newS = [];
  for (var ss in s.split('')) {
    if (RegExp("[a-zA-Z0-9]").hasMatch(ss)) {
      ss = ss.toLowerCase();
      newS.add(ss);
    }
  }

  List<String> reverseNewS = newS.reversed.toList();

  return reverseNewS.join() == newS.join();
}
