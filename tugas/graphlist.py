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
        ('A', 'B'), ('A', 'C'),
        ('B', 'D'), ('B', 'E'),
        ('D', 'I'), ('I', 'H'),
        ('C', 'F'), ('C', 'G')
    ]
    for u, v in edges:
        g.add_edge(u, v)
    
    print("DFS (Adjacency List) Order:")
    g.bfs('A')
        