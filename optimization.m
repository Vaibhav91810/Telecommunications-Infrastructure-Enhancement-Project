import numpy as np
import pandas as pd
import networkx as nx
import matplotlib.pyplot as plt

# Load example network data
network_data = pd.read_csv('../data/example_network_data.csv')

# Create a network graph
G = nx.from_pandas_edgelist(network_data, 'source', 'target', ['weight'])

# Define optimization algorithm (e.g., Dijkstra's shortest path)
def optimize_network(graph):
    optimized_paths = {}
    for source in graph.nodes:
        for target in graph.nodes:
            if source != target:
                path = nx.dijkstra_path(graph, source, target)
                optimized_paths[(source, target)] = path
    return optimized_paths

# Optimize the network
optimized_paths = optimize_network(G)

# Display optimized paths
for (source, target), path in optimized_paths.items():
    print(f"Optimized path from {source} to {target}: {path}")

# Visualize the network
pos = nx.spring_layout(G)
nx.draw(G, pos, with_labels=True, node_color='lightblue', edge_color='gray')
weights = nx.get_edge_attributes(G, 'weight')
nx.draw_networkx_edge_labels(G, pos, edge_labels=weights)
plt.title('Optimized Telecommunications Network')
plt.show()
