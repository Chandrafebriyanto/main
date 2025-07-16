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
    ('A', 'B'), ('A', 'C'), ('A', 'D'),
    ('B', 'E'), ('B', 'F'), ('C', 'G')
    ]

    for u, v in edges:
        g.add_edge(u, v)
    
    print("BFS (Adjacency List) Order:")
    g.bfs('A')


# Tittle: BFS Adjacency matrix
from collections import deque

class GraphMatrix:
    def __init__(self, nodes):
        self.nodes = nodes
        self.index = {node: i for i, node in enumerate(nodes)}
        n = len(nodes)
        self.mat = [[0]*n for _ in range(n)]
    
    def add_edge(self, u, v):
        i, j = self.index[u], self.index[v]
        self.mat[i][j] = 1  # Untuk graf tak berarah, tambahkan juga self.mat[j][i] = 1
        
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
    matrix = [
        [0,1,1,1,0,0,0],       
        [1,0,0,0,1,1,0],       
        [1,0,0,0,0,0,1],       
        [1,0,0,0,0,0,0],       
        [0,1,0,0,0,0,0],       
        [0,1,0,0,0,0,0],       
        [0,0,1,0,0,0,0]
    ]
    
    for i in range(len(nodes)):
        for j in range(len(nodes)):
            if matrix[i][j] == 1:
                g.add_edge(nodes[i], nodes[j])

print("\n\nBFS (Adjacency Matrix) Order:")
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
    ('A', 'B'), ('A', 'C'), ('A', 'D'),
    ('B', 'E'), ('B', 'F'), ('C', 'G')
    ]
    for u, v in edges:
        g.add_edge(u, v)
    
    print("\n\nDFS (Adjacency List) Order:")
    g.bfs('A')
        

# Tittle: DFS Adjacency matix
class graph_matrix_dfs:
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
    g = graph_matrix_dfs(nodes)
    
    matrix = [
        [0,1,1,1,0,0,0],       
        [1,0,0,0,1,1,0],       
        [1,0,0,0,0,0,1],       
        [1,0,0,0,0,0,0],       
        [0,1,0,0,0,0,0],       
        [0,1,0,0,0,0,0],       
        [0,0,1,0,0,0,0]
    ]
     
    for i in range(len(nodes)):
        for j in range(len(nodes)):
            if matrix[i][j] == 1:
                g.add_edge(nodes[i], nodes[j])
    
    print("\n\nDFS (Adjacency Matrix) Order:")
    g.dfs('A')

# note: BFS adalah algoritma penelusuran graf yang memulai dari simpul awal (root) dan mengunjungi semua tetangga secara melebar berdasarkan level atau kedalaman.

# note: DFS adalah algoritma penelusuran graf yang memulai dari simpul awal (root) dan menjelajahi sejauh mungkin ke dalam cabang sebelum mundur.

# note: Adjacency list menggunakan daftar terhubung untuk setiap simpul, sedangkan adjacency matrix menggunakan matriks persegi di mana setiap elemen mewakili hubungan antara dua simpul