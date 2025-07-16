# 21 - 05 - 2025
#tittle: transversal
class treenode:
    def __init__(self, value):
        self.value = value 
        self.left = None
        self.right = None
    
    def inorder(self, root):
        return self.inorder(root.left) + [root.value] + self.inorder(root.right) if root else []
    
    def preorder(self, root):
        return [root.value] + self.preorder(root.left) + self.preorder(root.right) if root else []
    
    def postorder(self, root):
        return self.postorder(root.left) + self.postorder(root.right) + [root.value] if root else []

tree = treenode('A')
tree.left = treenode('B')
tree.right = treenode('C')
tree.left.left = treenode('D')
tree.left.right = treenode('E')
tree.right.left = treenode('F')

print("Preorder Traversal:", tree.preorder(tree))
print("Inorder Traversal:", tree.inorder(tree))
print("Postorder Traversal:", tree.postorder(tree))

# note: Preorder Traversal mengunjungi node root terlebih dahulu, kemudian melanjutkan ke subtree kiri, dan terakhir ke subtree kanan.

# note: Inorder Traversal mengunjungi subtree kiri terlebih dahulu, kemudian root, dan terakhir subtree kanan.

# note: Postorder Traversal dimulai dari subtree kiri, kemudian subtree kanan, dan terakhir node root.