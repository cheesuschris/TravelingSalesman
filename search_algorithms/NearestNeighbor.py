from .search import Node

def nearest_neighbor_search(problem, display=False):
    matrix = problem.weights
    n = problem.num_cities
    unvisited = set(range(n))
    arbitrary_node = 0
    unvisited.remove(arbitrary_node)
    tour = [arbitrary_node]
    curr_city = arbitrary_node
    total_cost = 0
    while unvisited:
        nearest_city = min(unvisited, key = lambda city: matrix[curr_city][city])
        tour.append(nearest_city)
        unvisited.remove(nearest_city)
        total_cost += matrix[curr_city][nearest_city]
        curr_city = nearest_city
    tour.append(arbitrary_node)
    total_cost += matrix[curr_city][arbitrary_node]
    if display:
        print("Nearest Neighbor searched path: ", tour)
        print("Nearest Neighbor searched cost:", total_cost)
    return Node(state = tuple(tour), parent = None, action = None, path_cost = total_cost)