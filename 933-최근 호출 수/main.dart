import 'dart:collection';

void main() {
  RecentCounter recentCounter = new RecentCounter();
  print(recentCounter.ping(1));
  print(recentCounter.ping(100));
  print(recentCounter.ping(3001));
  print(recentCounter.ping(3002));
}

class RecentCounter {
  Queue q = Queue<int>();
  RecentCounter() {}

  int ping(int t) {
    q.add(t);

    // 처음 범위 지정
    int first = t - 3000;
    // 처음 범위에서 벗어나는 모든 요소 제거
    q.removeWhere((e) => first > e);

    return q.length;
  }

  // 속도 개선
  int ping2(int t) {
    q.add(t);

    // 큐의 첫 번째 요소가 범위에 속하지 않으면 제거
    while (q.isNotEmpty && q.first < t - 3000) {
      q.removeFirst();
    }

    return q.length;
  }
}
