import heapq
import itertools

# note: membuat variabel negara
ind  = "indonesia"
brn  = "brunei"
khm  = "kamboja"
lao  = "laos"
mal  = "malaysia"
myan = "myanmar"
phl  = "filipina"
sgp  = "singapura"
tha  = "thailand"
vnm  = "vietnam"



graph = {
    ind : {sgp: 863, brn:1300, mal:1369, mal:1369},
    brn : {ind: 1300, sgp:1301, khm:1414, phl:1259},
    khm : {mal: 1029, vnm:421, brn:1505, tha:527, sgp:1295, phl: 1942},
    lao : {myan: 686, vnm: 837, tha: 425},
    mal : {ind:1369, sgp: 411, khm: 1071},
    myan: {lao: 686, tha: 857},
    phl : {brn: 1259, khm: 1942, vnm: 1625},
    sgp : {ind:863, mal:411, brn: 1301, khm: 1295},
    tha : {myan: 857, lao: 425, khm: 527, vnm: 730},
    vnm : {khm: 421, lao: 837, tha: 730, phl: 1625}
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

def tsp(graph, start):
    cities = list(graph.keys())
    cities.remove(start)
    min_path = []
    min_cost = float("inf")
    
    for perm in itertools.permutations(cities):
        cost = 0
        route = [start] + list(perm) + [start]
        valid = True
        for i in range(len(route) - 1):
            src, dst = route[i], route[i + 1]
            if dst in graph[src]:
                cost += graph[src][dst]
            else:
                valid = False
                break
        if valid and cost < min_cost:
            min_cost = cost
            min_path = route
            
    return min_cost, min_path


awal = input("Masukkan kota awal: ").lower()
akhir = input("Masukkan kota akhir: ").lower()

# tittle: algoritma dijkstra
total_cost, route = dijkstra(graph, awal, akhir)

print("----------algoritma dijkstra----------")
print(f"kota yang dilalui dari {awal} ke {akhir}: {' -> '.join(route)}")
print(f"Total jarak tempu dari {awal} ke {akhir}: {total_cost} km")


# tittle: algoritma tsp
total_cost, route = tsp(graph, awal)

print("\n------------algoritma tsp-------------")
print(f"rute terpendek dari {awal} ke semua negara: {' -> '.join(route)}")
print(f"Total jarak tempu dari {awal} ke semua negara: {total_cost} km")