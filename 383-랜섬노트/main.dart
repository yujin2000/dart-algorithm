void main() {}

bool canConstruct(String ransomNote, String magazine) {
  var list = magazine.split('');
  for (int i = 0; i < ransomNote.length; i++) {
    if (!list.remove(ransomNote[i])) {
      return false;
    }
  }

  return true;
}
