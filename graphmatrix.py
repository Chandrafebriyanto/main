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
        ('A', 'B'), ('A', 'C'),
        ('B', 'D'), ('B', 'E'),
        ('C', 'F'), ('C', 'G')
    ]
    for u, v in edges:
        g.add_edge(u, v)
    
    print("BFS (Adjacency Matrix) Order:")
    g.bfs('A')