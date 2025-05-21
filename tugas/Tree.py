class treenode:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None
    
    def inorder(self, root):
        return self.inorder(root.left) + [root.value] + self.inorder(root.right) if root else[]
    
    def preorder(self, root):
        return [root.value] + self.preorder(root.left) + self.preorder(root.right) if root else[]
    
    def postorder(self, root):
        return self.postorder(root.left) + self.postorder(root.right) + [root.value] if root else[]

tree = treenode(8)
tree.left = treenode(3)
tree.right = treenode(10)
tree.left.left = treenode(1)
tree.left.right = treenode(6)
print("Inorder Traversal:", tree.inorder(tree))    
print("Preorder Traversal:", tree.preorder(tree))    
print("Postorder Traversal:", tree.postorder(tree))    