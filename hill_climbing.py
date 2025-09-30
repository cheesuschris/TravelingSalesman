from search import Node
import numpy as np
import random

def hill_climbing_search(problem, num_repeats):

    #Idk the correct number_of_neighbors best hyperparameter. question @59 on piazza deals with this but I didn't really follow shrug
    def find_neighbors(state, number_of_neighbors=100):
        neighbors = []
        for _ in range(number_of_neighbors):
            neighbor_state = list(state)
            i, j = random.sample(range(len(neighbor_state)), 2)
            neighbor_state[i], neighbor_state[j] = neighbor_state[j], neighbor_state[i]
            neighbors.append(Node(tuple(neighbor_state)))
        return neighbors

    best_solution = None
    best_cost = float('-inf')
    for _ in range(num_repeats):
        cities_copy = problem.cities[:]
        random.shuffle(cities_copy)
        current = Node(tuple(cities_copy))
        while True:
            neighbors = find_neighbors(current.state)
            neighbor = np.argmax_random_tie(neighbors, key=lambda node: problem.value(node.state))
            if problem.value(neighbor.state) > problem.value(current.state):
                current.state = neighbor.state
            else:
                break
        if problem.value(current.state) > best_cost:
            best_cost = problem.value(current.state)
            best_solution = current.state
    return Node(state = best_solution, parent=None, action=None, path_cost = best_cost)