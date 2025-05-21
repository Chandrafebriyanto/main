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
        ('A', 'B'), ('A', 'C'),
        ('B', 'D'), ('B', 'E'),
        ('C', 'F'), ('C', 'G')
    ]
    for u, v in edges:
        g.add_edge(u, v)
    
    print("BFS (Adjacency List) Order:")
    g.bfs('D')