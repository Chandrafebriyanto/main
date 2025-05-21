class graphmatrix_dfs:
    def __init__(self, nodes):
        self.nodes = nodes
        self.index = {node: i for i, node in enumerate(nodes)}
        n = len(nodes)
        self.mat = [[0] * n for _ in range(n)]
    
    def add_edge(self, u, v):
        i, j = self.index[u], self.index[v]
        self.mat[i][j] = 1
        
    def dfs(self, start):
        visited = [False] * len(self.nodes)
        self._dfs_util(start, visited)
    
    def _dfs_util(self, node, visited):
        idx = self.index[node]
        visited[idx] = True
        print(node, end=' ')
        for i, has_edge in enumerate(self.mat[idx]):
            if has_edge and not visited[i]:
                self._dfs_util(self.nodes[i], visited)
                
if __name__ == "__main__":
    nodes = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    g = graphmatrix_dfs(nodes)
    
    edges = [
        ('A', 'B'), ('A', 'C'),
        ('B', 'D'), ('B', 'E'),
        ('C', 'F'), ('C', 'G')
    ]
    
    for u, v in edges:
        g.add_edge(u, v)
    
    print("DFS (Adjacency Matrix) Order:")
    g.dfs('A')
# Output: 