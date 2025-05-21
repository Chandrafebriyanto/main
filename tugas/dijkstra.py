import heapq

graph = {
    'A': {'B': 3, 'D': 6},
    'B': {'A': 3, 'D': 4, 'E': 7},
    'D': {'A': 6, 'B': 4, 'F': 2, 'E': 3},
    'E': {'B': 7, 'D': 3, 'F': 1, 'C': 10},
    'F': {'D': 2, 'E': 1, 'C': 3},
    'C': {'E': 10, 'F': 3}
}

def dijkstra(graph, start, end):
    queue = [(0, start, [])]
    visited = set()
    
    while queue:
        (cost, node, path) = heapq.heappop(queue)
        if node in visited:
            continue
        path = path + [node]
        if node == end:
            return (cost, path)
        visited.add(node)
        for neighbor, weight in graph[node].items():
            if neighbor not in visited:
                heapq.heappush(queue, (cost + weight, neighbor, path))
    return float("inf"), []

total_cost, route = dijkstra(graph, 'A', 'C')

print('Rute terpendek dari A ke C:', ' -> '. join(route))
print('Total bobot:', total_cost)