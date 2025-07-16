import networkx as nx
import matplotlib.pyplot as plt

# Data jarak antar kota (berarah dua arah karena dua kota saling terhubung)
edges = [
    ('Jakarta', 'Bandung', 150),
    ('Jakarta', 'Surabaya', 780),
    ('Bandung', 'Semarang', 430),
    ('Bandung', 'Surabaya', 800),
    ('Semarang', 'Yogyakarta', 130),
    ('Surabaya', 'Yogyakarta', 330)
]

# Buat graf berarah (undirected)
G = nx.Graph()
for u, v, w in edges:
    G.add_edge(u, v, weight=w)

# Gambar graf
pos = nx.spring_layout(G, seed=42)  # posisi otomatis
plt.figure(figsize=(10, 6))
nx.draw(G, pos, with_labels=True, node_color='lightgreen', node_size=1500, font_size=12, font_weight='bold')
edge_labels = nx.get_edge_attributes(G, 'weight')
nx.draw_networkx_edge_labels(G, pos, edge_labels=edge_labels)
plt.title("Graf Jarak Antar Kota Besar di Pulau Jawa")
plt.show()

# Dijkstra: cari jarak terpendek dari Jakarta ke Yogyakarta
shortest_path = nx.dijkstra_path(G, source='Jakarta', target='Yogyakarta', weight='weight') # type: ignore
shortest_distance = nx.dijkstra_path_length(G, source='Jakarta', target='Yogyakarta', weight='weight') # type: ignore

# Output hasil
print("Rute Terpendek dari Jakarta ke Yogyakarta:", ' -> '.join(shortest_path))
print("Total Jarak:", shortest_distance, "km")