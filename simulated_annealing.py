from search import Node
import random
import numpy as np
from utils import probability

def simulated_annealing_search(problem, alpha, initial_temperature, max_iterations):

    #I still don't know the hyperparam for number_of_neighbors to generate lol
    def find_neighbors(state, number_of_neighbors=100):
        neighbors = []
        for _ in range(number_of_neighbors):
            neighbor_state = list(state)
            i, j = random.sample(range(len(neighbor_state)), 2)
            neighbor_state[i], neighbor_state[j] = neighbor_state[j], neighbor_state[i]
            neighbors.append(Node(tuple(neighbor_state)))
        return neighbors

    cities_copy = problem.cities[:]
    random.shuffle(cities_copy)
    current = Node(tuple(cities_copy))
    temp = initial_temperature
    for _ in range(max_iterations):
        neighbors = find_neighbors(current.state)
        neighbor = np.argmax_random_tie(neighbors, key=lambda node: problem.value(node.state))
        if problem.value(neighbor.state) > problem.value(current.state) or probability(np.exp((problem.value(neighbor.state)-problem.value(current.state))/temp)):
            current.state = neighbor.state
            temp *= alpha #Are we sure this only happens after a route is accepted? The instructions say this but is it supposed to be after each iteration regardless of acceptance?
            #Also, it says to record the value for not the best solution, but where the simulated annealing finally ends up? Is this supposed to be correct in the instructions?
    return current