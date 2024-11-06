void main() {}

class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? current = head;

    while (current != null) {
      ListNode? nextTemp = current.next; // 현재 노드의 다음 노드를 temp 에 임시 저장
      current.next = prev; // 현재 노드의 다음 노드를 이전(prev) 노드로 변경
      prev = current; // 이전 노드를 현재 노드로 변경
      current = nextTemp; // 현재 노드를 다음 노드로 이동
    }
    return prev;
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
