from .search import Node
import random
import numpy as np
from utils.utils import probability

def simulated_annealing_search(problem, alpha, initial_temperature, max_iterations, display=False):

    def find_neighbors(state):
        neighbor_state = list(state)
        i, j = random.sample(range(len(neighbor_state)), 2)
        neighbor_state[i], neighbor_state[j] = neighbor_state[j], neighbor_state[i]
        return Node(tuple(neighbor_state + [neighbor_state[0]]))

    to_display = []
    cities_copy = problem.cities[:]
    random.shuffle(cities_copy)
    current = Node(tuple(cities_copy))
    temp = initial_temperature
    for _ in range(max_iterations):
        neighbor = find_neighbors(current.state)
        current_with_return = tuple(list(current.state) + [current.state[0]])
        if problem.value(neighbor.state) > problem.value(current_with_return) or probability(np.exp((problem.value(neighbor.state)-problem.value(current_with_return))/temp)):
            current.state = neighbor.state[:-1]
            temp *= alpha #Are we sure this only happens after a route is accepted? The instructions say this but is it supposed to be after each iteration regardless of acceptance?
            #Also, it says to record the value for not the best solution, but where the simulated annealing finally ends up? Is this supposed to be correct in the instructions?
        if display:
            to_display.append(-problem.value(tuple(list(current.state) + [current.state[0]])))
    current.state = tuple(list(current.state) + [current.state[0]])
    current.path_cost = -problem.value(current.state)
    if display:
        return to_display, current
    return current