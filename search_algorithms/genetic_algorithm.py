from search import Node
import random
import numpy as np
from utils.utils import argmax_random_tie

def genetic_algorithm_search(problem, mutation_chance, population_size, num_generations, display=False):
    to_display = []
    solutions = []
    for _ in range(population_size):
        cities_copy = problem.cities[:]
        random.shuffle(cities_copy)
        solutions.append(Node(tuple(cities_copy)))  
    for _ in range(num_generations):
        #I'm going to use the Alternating-position crossover, I'm assuming (research paper doesn't say) that if solutions is odd then last one is just not crossed over?
        #Also, according to the research paper I first produce CHILDREN (plural) then mutate the INDIVIDUALS (plural), so I'm assuming I don't mutate upon each singular birth
        children = []
        i = 0
        random.shuffle(solutions)
        while i < len(solutions)-1:
            parent1 = list(solutions[i].state)
            parent2 = list(solutions[i+1].state)
            childset = set()
            child = []
            p1 = 0
            p2 = 0
            j = 0
            while p1 < len(parent1) and p2 < len(parent2):
                if j%2 == 0:
                    if parent1[p1] not in childset:
                        childset.add(parent1[p1])
                        child.append(parent1[p1])
                    p1 += 1
                else:
                    if parent2[p2] not in childset:
                        childset.add(parent2[p2])
                        child.append(parent2[p2])
                    p2 += 1
                j += 1
            while p1 < len(parent1):
                if parent1[p1] not in childset:
                    childset.add(parent1[p1])
                    child.append(parent1[p1])
                p1 += 1
            while p2 < len(parent2):
                if parent2[p2] not in childset:
                    childset.add(parent2[p2])
                    child.append(parent2[p2])
                p2 += 1
            children.append(Node(tuple(child)))
            childset = set()
            child = []
            p1 = 0
            p2 = 0
            j = 0
            while p1 < len(parent1) and p2 < len(parent2):
                if j%2 == 1:
                    if parent1[p1] not in childset:
                        childset.add(parent1[p1])
                        child.append(parent1[p1])
                    p1 += 1
                else:
                    if parent2[p2] not in childset:
                        childset.add(parent2[p2])
                        child.append(parent2[p2])
                    p2 += 1
                j += 1
            while p1 < len(parent1):
                if parent1[p1] not in childset:
                    childset.add(parent1[p1])
                    child.append(parent1[p1])
                p1 += 1
            while p2 < len(parent2):
                if parent2[p2] not in childset:
                    childset.add(parent2[p2])
                    child.append(parent2[p2])
                p2 += 1
            children.append(Node(tuple(child)))
            i += 2
        for child in children:
            mut_prob = random.random()
            if mut_prob < mutation_chance:
                i, j = random.sample(range(len(list(child.state))), 2)
                copy_state = list(child.state)
                copy_state[i], copy_state[j] = copy_state[j], copy_state[i]
                child.state = tuple(copy_state)
        solutions.extend(children)
        solutions.sort(key = lambda node: problem.value(tuple(list(node.state) + [node.state[0]])), reverse=True)
        solutions = solutions[:population_size]
        if display:
            solution = argmax_random_tie(solutions, key = lambda node: problem.value(tuple(list(node.state) + [node.state[0]])))
            to_display.append(-problem.value(tuple(list(solution.state) + [solution.state[0]])))
    solution = argmax_random_tie(solutions, key = lambda node: problem.value(tuple(list(node.state) + [node.state[0]])))
    solution_with_return = tuple(list(solution.state) + [solution.state[0]])
    if display:
        return to_display, Node(state=solution_with_return, parent=None, action=None, path_cost = -problem.value(solution_with_return))
    return Node(state=solution_with_return, parent=None, action=None, path_cost = -problem.value(solution_with_return))
    