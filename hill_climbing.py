from search import Node
import numpy as np
import random
from utils import argmax_random_tie

def hill_climbing_search(problem, num_repeats, display=False):

    def find_neighbors(state, number_of_neighbors=100):
        neighbors = []
        for _ in range(number_of_neighbors):
            neighbor_state = list(state)
            i, j = random.sample(range(len(neighbor_state)), 2)
            neighbor_state[i], neighbor_state[j] = neighbor_state[j], neighbor_state[i]
            neighbors.append(Node(tuple(neighbor_state + [neighbor_state[0]])))
        return neighbors

    to_display = []
    best_solution = None
    best_cost = float('-inf')
    for i in range(num_repeats):
        cities_copy = problem.cities[:]
        random.shuffle(cities_copy)
        current = Node(tuple(cities_copy))
        while True:
            neighbors = find_neighbors(current.state)
            neighbor = argmax_random_tie(neighbors, key=lambda node: problem.value(node.state))
            current_with_return = tuple(list(current.state) + [current.state[0]])
            if problem.value(neighbor.state) > problem.value(current_with_return):
                current.state = neighbor.state[:-1]
            else:
                break
        current_with_return = tuple(list(current.state) + [current.state[0]])
        if problem.value(current_with_return) > best_cost:
            best_cost = problem.value(current_with_return)
            best_solution = current_with_return
        if display:
            to_display.append(-problem.value(best_solution))
    if display:
        return to_display, Node(state = best_solution, parent=None, action=None, path_cost = -best_cost)
    return Node(state = best_solution, parent=None, action=None, path_cost = -best_cost)