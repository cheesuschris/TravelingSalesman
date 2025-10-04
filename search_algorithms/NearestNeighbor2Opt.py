from search import Node

def nearest_neighbor_2opt_search(problem, display=False):
    matrix = problem.weights
    best_tour, best_cost = nearest_neighbor_search(matrix)
    improved = True
    while improved:
        improved = False
        for i in range(1, len(best_tour)-2):
            for j in range(i+1, len(best_tour)-1):
                if j - i == 1:
                    continue
                new_cost = twoOptSwapCost(matrix, best_tour, i, j)
                if new_cost < 0:
                    best_tour = twoOptSwap(best_tour, i, j)
                    best_cost += new_cost
                    improved = True
                    break
            if improved:
                break
    if display:
        print("Nearest Neighbor 2 Opt searched path: ", best_tour)
        print("Nearest Neighbor 2 Opt searched cost: ", best_cost)
    return Node(state = best_tour, parent=None, action=None, path_cost = best_cost)
        

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

def nearest_neighbor_search(matrix):
    unvisited = set(range(len(matrix)))
    arbitrary_node = 0
    unvisited.remove(arbitrary_node)
    tour = [arbitrary_node]
    curr_city = arbitrary_node
    total_cost = 0
    while unvisited:
        nearest_city = min(unvisited, key = lambda city: matrix[curr_city][city])
        nearest_cost = matrix[curr_city][nearest_city]
        tour.append(nearest_city)
        unvisited.remove(nearest_city)
        total_cost += nearest_cost
        curr_city = nearest_city
    tour.append(arbitrary_node)
    total_cost += matrix[curr_city][arbitrary_node]
    return tour, total_cost