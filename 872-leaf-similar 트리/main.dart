void main() {
  // 노드를 순회하면서 마지막 노드를 리스트에 저장
  // 내부 함수를 정의하여 재귀적으로 호출
  List<int> getLeaves(TreeNode? node) {
    List<int> leaves = [];

    // 내부 함수
    void find(TreeNode? root) {
      if (root == null) return;
      // 마지막 노드를 리스트에 추가
      if (root.left == null && root.right == null) {
        leaves.add(root.val);
      } else {
        // 자식 노드가 남아있으면 재귀적으로 찾기
        find(root.left);
        find(root.right);
      }
    }

    // find 함수 호출
    find(node);

    return leaves;
  }

  // 각 트리를 순회하면서 마지막 노드를 찾으면 리스트에 추가
  // 만든 두 개의 리스트를 비교하여 같으면 true 다르면 false 를 반환
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    List<int> root1Leaves = getLeaves(root1);
    List<int> root2Leaves = getLeaves(root2);

    // 리스트 길이가 다르면 바로 false 반환
    if (root1Leaves.length != root2Leaves.length) return false;

    // 리스트 하나씩 비교
    for (int i = 0; i < root1Leaves.length; i++) {
      if (root1Leaves[i] == root2Leaves[i]) {
        continue;
      } else {
        return false;
      }
    }

    return true;
  }
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}
