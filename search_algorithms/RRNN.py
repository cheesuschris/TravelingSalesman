import random
import heapq
from .search import Node

def repeated_random_nearest_neighbor_search(problem, k, num_repeats, display = False):
    matrix = problem.weights
    best_tour, best_cost = None, float('inf')
    for _ in range(num_repeats):
        tour, cost = random_k_nearest_neighbor_search(matrix, k)
        improved = True
        while improved:
            improved = False
            for i in range(1, len(tour)-2):
                for j in range(i+2, len(tour)-1):
                    if j - i == 1:
                        continue
                    new_cost = twoOptSwapCost(matrix, tour, i, j)
                    if new_cost < 0:
                        tour = twoOptSwap(tour, i, j)
                        cost += new_cost
                        improved = True
                        break
                if improved:
                    break
        if cost < best_cost:
            best_tour = tour
            best_cost = cost
    if display:
        print("Repeated Random Nearest Neighbor searched path: ", best_tour)
        print("Repeated Random Nearest Neighbor cost: ", best_cost)
    return Node(state = best_tour, parent=None, action=None, path_cost = best_cost)
        
def random_k_nearest_neighbor_search(matrix, k):
    unvisited = set(range(len(matrix)))
    arbitrary_node = 0
    unvisited.remove(arbitrary_node)
    tour = [arbitrary_node]
    curr_city = arbitrary_node
    total_cost = 0
    while unvisited:
        if len(unvisited) <= k:
            k_closest = list(unvisited)
        else:
            distances = []
            for city in unvisited:
                distances.append((matrix[curr_city][city], city))
            k_smallest = heapq.nsmallest(k, distances)
            k_closest = [city for _, city in k_smallest]
        city = random.choice(k_closest)
        tour.append(city)
        total_cost += matrix[curr_city][city]
        unvisited.remove(city)
        curr_city = city
    tour.append(arbitrary_node)
    total_cost += matrix[curr_city][arbitrary_node]
    return tour, total_cost

def twoOptSwapCost(matrix, tour, v1, v2):
    prev_city = tour[v1-1]
    city_1 = tour[v1]
    city_2 = tour[v2]
    next_city = tour[v2+1]
    old_cost = matrix[prev_city][city_1] + matrix[city_2][next_city]
    new_cost = matrix[prev_city][city_2] + matrix[city_1][next_city]
    return new_cost - old_cost

def twoOptSwap(tour, v1, v2):
    new_tour = tour[:v1] + tour[v1:v2+1][::-1] + tour[v2+1:]
    return new_tour
