void main() {}

// 이진 탐색 트리는 왼쪽 자식 노드가 부모 노드보다 작고, 오른쪽 자식 노드는 부모 노드보다 크다
TreeNode? searchBST(TreeNode? root, int val) {
  if (root == null) return null;
  if (root.val == val) {
    return root;
  } else if (root.val > val) {
    return searchBST(root.left, val);
  } else {
    return searchBST(root.right, val);
  }
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}
