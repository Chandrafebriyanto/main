# 21 - 05 - 2025
# Tittle: BFS Adjacency List
from collections import defaultdict, deque

class GraphList:
    def __init__(self):
        self.adj = defaultdict(list)
    
    def add_edge(self, u ,v):
        self.adj[u].append(v)
    
    def bfs(self, start):
        visited = set([start])
        q = deque([start])
        while q:
            u = q.popleft()
            print(u, end=' ')
            for nei in self.adj[u]:
                if nei not in visited:
                    visited.add(nei)
                    q.append(nei)

if __name__ == "__main__":
    g = GraphList()
    edges = [
        ('A', 'D'), ('A', 'C'),
        ('A', 'B'), ('B', 'E'),
        ('B', 'F'), ('C', 'G')
    ]
    for u, v in edges:
        g.add_edge(u, v)
    
    print("BFS (Adjacency List) Order:")
    g.bfs('D')


# Tittle: BFS Adjacency matrix
from collections import deque

class GraphMatrix:
    def __init__(self,nodes):
        self.nodes = nodes
        self.index = {node: i for i, node in enumerate(nodes)}
        n = len(nodes)
        self.mat = [[0]*n for _ in  range (n)]
    
    def add_edge(self, u, v):
        i, j = self.index[u], self.index[v]
        self.mat[i][j] = 1
        
    def bfs(self, start):
        visited = [False] * len(self.nodes)
        q = deque()
        visited[self.index[start]] = True
        q.append(start)
        
        while q:
            u = q.popleft()
            print(u, end=' ')
            u_idx = self.index[u]
            for v_idx, is_edge in enumerate(self.mat[u_idx]):
                if is_edge and not visited[v_idx]:
                    visited[v_idx] = True
                    q.append(self.nodes[v_idx])
                    
if __name__ == "__main__":
    nodes = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    g = GraphMatrix(nodes)
    edges = [
        ('A', 'D'), ('A', 'C'),
        ('A', 'B'), ('B', 'E'),
        ('B', 'F'), ('C', 'G')
    ]
    for u, v in edges:
        g.add_edge(u, v)
    
    print("BFS (Adjacency Matrix) Order:")
    g.bfs('A')


# Tittle: DFS Adjacency list
from collections import defaultdict

class GraphList:
    def __init__(self):
        self.adj = defaultdict(list)
    
    def add_edge(self, u ,v):
        self.adj[u].append(v)
    
    def bfs(self, node, visited=None):
        if visited is None:
            visited = set()
        visited.add(node)
        print(node, end=' ')
        for nei in self.adj[node]:
            if nei not in visited:
                self.bfs(nei, visited)

if __name__ == "__main__":
    g = GraphList()
    edges = [
        ('A', 'D'), ('A', 'C'),
        ('A', 'B'), ('B', 'E'),
        ('B', 'F'), ('C', 'G')
    ]
    for u, v in edges:
        g.add_edge(u, v)
    
    print("DFS (Adjacency List) Order:")
    g.bfs('A')
        

# Tittle: DFS Adjacency matix
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
        ('A', 'D'), ('A', 'C'),
        ('A', 'B'), ('B', 'E'),
        ('B', 'F'), ('C', 'G')
    ]
    
    for u, v in edges:
        g.add_edge(u, v)
    
    print("DFS (Adjacency Matrix) Order:")
    g.dfs('A')
# Output: 