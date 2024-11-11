void main() {}

int maxDepth(TreeNode? root) {
  // root 가 null 이면 제일 끝 노드 반환(0)
  if (root == null) {
    return 0;
  }

  int left = maxDepth(root.left); // 왼쪽 최대 깊이
  int right = maxDepth(root.right); // 오른쪽 최대 깊이

  // 왼쪽 오른쪽 중 큰 값에 + 1 하여 최대 depth 구하기
  return left > right ? left + 1 : right + 1;
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}
