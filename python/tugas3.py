import heapq

# note: membuat variabel kota
jkt = 'jakarta'
bdg = 'bandung'
sby = 'surabaya'
smr = 'semarang'
diy = 'yogyakarta' 

graph = {
    jkt: {bdg: 150, sby: 780},
    bdg: {jkt: 150, sby: 800, smr: 430},
    sby: {jkt: 780, bdg: 800, diy: 330},
    smr: {bdg: 430, diy: 130},
    diy: {sby: 330, smr: 130}
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

awal = input("Masukkan kota awal: ").lower()
akhir = input("Masukkan kota akhir: ").lower()

total_cost, route = dijkstra(graph, awal, akhir)

print(f"kota yang dilalui dari {awal} ke {akhir}: {' -> '.join(route)}")
print(f"Total jarak tempu dari {awal} ke {akhir}: {total_cost} km")