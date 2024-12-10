void main() {
  var products = ["mobile", "mouse", "moneypot", "monitor", "mousepad"];
  var searchWord = "mouse";

  print(suggestedProducts(products, searchWord));
}

List<List<String>> suggestedProducts(List<String> products, String searchWord) {
  List<List<String>> result = List.generate(searchWord.length, (_) => []);

  products.sort();

  for (int i = 0; i < searchWord.length; i++) {
    var word = searchWord.substring(0, i + 1);

    for (var pro in products) {
      if (pro.startsWith(word)) {
        result[i].add(pro);
      }
      if (result[i].length >= 3) {
        break;
      }
    }
  }

  return result;
}
