"""
Code skeleton for A* with TSP
For use with the AIMA codebase: https://github.com/aimacode/aima-python
CMSC 421 - Fall 2025
"""
import time
import numpy as np
from search_algorithms.search import Problem, astar_search
from search_algorithms.NearestNeighbor import nearest_neighbor_search
from search_algorithms.NearestNeighbor2Opt import nearest_neighbor_2opt_search
from search_algorithms.RRNN import repeated_random_nearest_neighbor_search
from search_algorithms.hill_climbing import hill_climbing_search
from search_algorithms.simulated_annealing import simulated_annealing_search
from search_algorithms.genetic_algorithm import genetic_algorithm_search
from scipy.sparse import csr_array
from scipy.sparse.csgraph import minimum_spanning_tree
import sys
from pathlib import Path
from collections import defaultdict
from statistics import median
import matplotlib.pyplot as plt
import random

### Define TSP ###

class MyTSP(Problem):

    # NOTE: This is just a suggestion for setting up your __init__,
    # you can use any design you want
    def __init__(self, weights, initial=(0,), goal=None):   
        super().__init__(initial, goal)
        self.weights = weights
        self.num_cities = weights.shape[0]
        self.cities = list(range(0, self.num_cities))

    def actions(self, state):
        """Return the actions that can be executed in the given
        state. The result would typically be a list, but if there are
        many actions, consider yielding them one at a time in an
        iterator, rather than building them all at once."""
        visited_cities = set(state)
        if len(visited_cities) == self.num_cities:
            yield state[0]
        for city in self.cities:
            if city not in visited_cities:
                yield city

    # NOTE: If you make your state a list object, you'll wind
    # up with an error like this: TypeError: unhashable type: 'list'
    # One work-around is the make your states tuples instead.
    def result(self, state, action):
        """Return the state that results from executing the given
        action in the given state. The action must be one of
        self.actions(state)."""
        new_state = state
        new_state += (action,)
        return new_state

    def goal_test(self, state):
        """Return True if the state is a goal. The default method compares the
        state to self.goal or checks for state in self.goal if it is a
        list, as specified in the constructor. Override this method if
        checking against a single self.goal is not enough."""
        return len(state) == self.num_cities + 1 and state[-1] == state[0]

    # NOTE: Remember the full cost includes the round trip back to the starting city!
    # So if you are adding the final city to the path, you should also add the cost
    # for the final edge too.
    def path_cost(self, c, state1, action, state2):
        """Return the cost of a solution path that arrives at state2 from
        state1 via action, assuming cost c to get up to state1. If the problem
        is such that the path doesn't matter, this function will only look at
        state2. If the path does matter, it will consider c and maybe state1
        and action. The default method costs 1 for every step in the path."""
        if c is None or state1 is None or action is None:
            cost = 0
            prev_city = state2[0]
            curr_city = state2[1]
            cost += self.weights[prev_city][curr_city]
            for i in range(2, len(state2)):
                prev_city = curr_city
                curr_city = state2[i]
                cost += self.weights[prev_city][curr_city]
            return cost
        else:
            cost = c
            curr_city = state1[-1]
            next_city = action
            cost += self.weights[curr_city][next_city]
            return cost

    def value(self, state):
        """For optimization problems, each state has a value. Hill Climbing
        and related algorithms try to maximize this value."""
        return -self.path_cost(None, None, None, state)

    # NOTE: For debugging purposes, you can use h(n)=0 while writing and testing
    # the rest of your code
    def h(self, node):
        """Return the heuristic value for a given state. astar_search will
        look for this heuristic function when run."""
        state = node.state
        if len(state) == self.num_cities:
            return 0
        unvisited_cities = list(self.actions(state))
        if len(unvisited_cities) == 1:
            return self.weights[state[-1]][unvisited_cities[0]] + self.weights[unvisited_cities[0]][state[0]]
        mst_matrix = self.weights[np.ix_(unvisited_cities, unvisited_cities)] #numpy's version of building adjacency matrix
        mst = minimum_spanning_tree(csr_array(mst_matrix))
        mst_cost = mst.sum()
        min_to_unvisited = min(self.weights[state[-1]][city] for city in unvisited_cities)
        min_to_start = min(self.weights[city][state[0]] for city in unvisited_cities)
        return mst_cost + min_to_unvisited + min_to_start

if __name__ == "__main__":
    all_arguments = sys.argv
    if len(all_arguments) < 3:
        print("Not enough arguments")
        print("Usage: python aima_my_tsp.py <algorithm> <matrix_file>")
        print("To use this file, call a search algorithm, a matrix, and additional hyperparameters if needed")
        print("Search algorithms: NN, NN2Opt, RRNN, A*, HC, SA, GA")
        sys.exit(1)
    else:
        script_name = sys.argv[0]
        search_algorithm = sys.argv[1]
        matrix_file = sys.argv[2]
    MATRIX_FILE = Path("matrices") / matrix_file

    if not MATRIX_FILE.is_file():
        raise FileNotFoundError(f"Matrix not found: {MATRIX_FILE}")

    MAT = np.loadtxt(MATRIX_FILE)
    print('Loaded road cost matrix:')
    print(MAT)
    MTSP = MyTSP(MAT)

    if search_algorithm == "NN":
        print('Running nearest neighbor...')
        t0 = time.time_ns()
        t0_cpu = time.process_time_ns()
        nearest_neighbor = nearest_neighbor_search(MTSP)
        print('CPU time %f seconds'%((time.process_time_ns()-t0_cpu) / 1e9))
        print('Wall time %f seconds'%((time.time_ns()-t0) / 1e9))
        nearest_neighbor_path = nearest_neighbor.state
        print('Solution Path: ' + str(nearest_neighbor_path))
        nearest_neighbor_cost = nearest_neighbor.path_cost
        print('Solution Cost: ' + str(nearest_neighbor_cost))
    elif search_algorithm == "NN2Opt":
        print('Running nearest neighbor 2 opt...')
        t0 = time.time_ns()
        t0_cpu = time.process_time_ns()
        nearest_neighbor_2opt = nearest_neighbor_2opt_search(MTSP)
        print('CPU time %f seconds'%((time.process_time_ns()-t0_cpu) / 1e9))
        print('Wall time %f seconds'%((time.time_ns()-t0) / 1e9))
        nearest_neighbor_2opt_path = nearest_neighbor_2opt.state
        print('Solution Path: ' + str(nearest_neighbor_2opt_path))
        nearest_neighbor_2opt_cost = nearest_neighbor_2opt.path_cost
        print('Solution Cost: ' + str(nearest_neighbor_2opt_cost))
    elif search_algorithm == "RRNN":
        generate_graph = input("Generate best hyperparameters and graph? This will read in from matrices subfolder and ignore the provided file (y/n):")
        if generate_graph == "y":
            file_prefix = Path("matrices") 

            city_counts = [5, 10, 15, 20, 25, 30]
            graphs_by_city = {n: [] for n in city_counts}
            for i in range(10):
                for n in city_counts:
                    graph_file = file_prefix / f"{n}_random_adj_mat_{i}.txt"
                    if graph_file.exists():
                        graphs_by_city[n].append(graph_file)
            results_by_city_and_k = defaultdict(lambda: defaultdict(list))
            results_by_city_and_repeats = defaultdict(lambda: defaultdict(list))
            k_values = list(range(1, 21))
            fixed_num_repeats = [1, 5, 10] 
            num_repeats_values = list(range(1, 21))
            fixed_k = [1, 10, 20]  
            
            for n_cities in city_counts:
                for graph_file in graphs_by_city[n_cities]:
                    MAT = np.loadtxt(graph_file)
                    print(f'Loaded road cost matrix {graph_file.name}')
                    MTSP = MyTSP(MAT)
                    for num_repeats in fixed_num_repeats:
                        for k in k_values:
                            print(f'Running RRNN with k={k}, fixed num_repeats={num_repeats}...')
                            RRNN = repeated_random_nearest_neighbor_search(MTSP, k, num_repeats)
                            RRNN_cost = RRNN.path_cost
                            print(f'Solution Cost: {RRNN_cost:.6f}')
                            results_by_city_and_k[n_cities][k].append(RRNN_cost)
            for n_cities in city_counts:
                for graph_file in graphs_by_city[n_cities]:
                    MAT = np.loadtxt(graph_file)
                    print(f'Loaded road cost matrix {graph_file.name}')
                    MTSP = MyTSP(MAT)
                    for k in fixed_k:
                        for num_repeats in num_repeats_values:
                            print(f'Running RRNN with fixed k={k}, num_repeats={num_repeats}...')
                            RRNN = repeated_random_nearest_neighbor_search(MTSP, k, num_repeats)
                            RRNN_cost = RRNN.path_cost
                            print(f'Solution Cost: {RRNN_cost:.6f}')
                            results_by_city_and_repeats[n_cities][num_repeats].append(RRNN_cost)

            median_costs_by_city_k = {}
            median_costs_by_city_repeats = {}
            
            fig = plt.figure(figsize=(15, 12))
            colors = {5: 'blue', 10: 'orange', 15: 'green', 20: 'red', 25: 'purple', 30: 'brown'}
            for i, num_repeats in enumerate(fixed_num_repeats, 1):
                ax = fig.add_subplot(2, 3, i)
                for n_cities in city_counts:
                    k_vals = sorted(k_values)
                    costs = [median(results_by_city_and_k[n_cities][k]) for k in k_vals]
                    ax.plot(k_vals, costs, 'o-', color=colors[n_cities], linewidth=2, markersize=6, label=f'n={n_cities}')
                ax.set_xlabel('k', fontsize=10)
                ax.set_ylabel('Median Total Cost', fontsize=10)
                ax.set_title(f'k vs. Cost (num_repeats={num_repeats})', fontsize=12)
                ax.legend(title='# Cities', fontsize=8, loc='best')
                ax.grid(True, alpha=0.3)
                ax.set_xticks(k_vals[::2])

            for i, k in enumerate(fixed_k, 1):
                ax = fig.add_subplot(2, 3, i+3)
                for n_cities in city_counts:
                    repeat_vals = sorted(num_repeats_values)
                    costs = [median(results_by_city_and_repeats[n_cities][r]) for r in repeat_vals]
                    ax.plot(repeat_vals, costs, 'o-', color=colors[n_cities], linewidth=2, markersize=6, label=f'n={n_cities}')
                ax.set_xlabel('num_repeats', fontsize=10)
                ax.set_ylabel('Median Total Cost', fontsize=10)
                ax.set_title(f'num_repeats vs. Cost (k={k})', fontsize=12)
                ax.legend(title='# Cities', fontsize=8, loc='best')
                ax.grid(True, alpha=0.3)
                ax.set_xticks(repeat_vals[::2])

            plt.tight_layout()
            plt.savefig('../graphs/RRNN_hyperparameter_analysis.png', dpi=300, bbox_inches='tight')
        else: 
            #The best hyperparams from inital analysis/graph creation
            k = 17
            num_repeats = 14
            print('Running repeated random nearest neighbor...')
            t0 = time.time_ns()
            t0_cpu = time.process_time_ns()
            RRNN = repeated_random_nearest_neighbor_search(MTSP, k, num_repeats)
            print('CPU time %f seconds'%((time.process_time_ns()-t0_cpu) / 1e9))
            print('Wall time %f seconds'%((time.time_ns()-t0) / 1e9))
            RRNN_path = RRNN.state
            print('Solution Path: ' + str(RRNN_path))
            RRNN_cost = RRNN.path_cost
            print('Solution Cost: ' + str(RRNN_cost))
    elif search_algorithm == "A*":
        print('Running A*...')
        t0 = time.time_ns()
        t0_cpu = time.process_time_ns()
        a_star = astar_search(MTSP, display=True)
        print('CPU time %f seconds'%((time.process_time_ns()-t0_cpu) / 1e9))
        print('Wall time %f seconds'%((time.time_ns()-t0) / 1e9))
        astar_path = a_star.state
        print('Solution Path: ' + str(astar_path))
        astar_cost = a_star.path_cost
        print('Solution Cost: ' + str(astar_cost))
    elif search_algorithm == "HC":
        generate_graph = input("Display HC Progress across Generations (will override your provided matrix. Uses matrices of size 15 cities & 500 num_repeats)?")
        if generate_graph == "y":
            files = []
            file_prefix = Path("matrices")
            for i in range(10):
                graph_file = file_prefix / f"15_random_adj_mat_{i}.txt"
                if graph_file.exists():
                    files.append(graph_file)
            medians = []
            for file in files:
                MAT = np.loadtxt(file)
                print(f'Loaded road cost matrix {file.name}')
                MTSP = MyTSP(MAT)
                to_display, _ = hill_climbing_search(MTSP, num_repeats=500, display=True)
                medians.append(to_display)
            medians_array = np.array(medians)
            median_per_iteration = np.median(medians_array, axis=0)
            plt.plot(list(range(500)), median_per_iteration, label="Median Score per Repeat")
            plt.legend(loc='upper right')
            plt.xlabel('# of repeats passed', fontsize=10)
            plt.ylabel('Median Best solution found across all 15 Cities Score', fontsize=10)
            plt.tick_params(axis='y', labelsize=8)
            plt.tick_params(axis='x', labelsize=8)
            plt.grid(True, alpha=0.3)
            plt.title("# of Repeats Passed vs. Median Best Solution Score across all 15 Cities found at that Repeat", fontsize=15)
            plt.tight_layout()
            plt.savefig('../graphs/HCRepeats.png', dpi=300, bbox_inches='tight')
        else:
            print('Running hill climbing...')
            t0 = time.time_ns()
            t0_cpu = time.process_time_ns()
            num_repeats = int(input("Provide num_repeats hyperparameter: "))
            hill_climbing = hill_climbing_search(MTSP, num_repeats=num_repeats)
            print('CPU time %f seconds'%((time.process_time_ns()-t0_cpu) / 1e9))
            print('Wall time %f seconds'%((time.time_ns()-t0) / 1e9))
            hill_climbing_path = hill_climbing.state
            print('Solution Path: ' + str(hill_climbing_path))
            hill_climbing_cost = hill_climbing.path_cost
            print('Solution Cost: ' + str(hill_climbing_cost))
    elif search_algorithm == "SA":
        generate_graph = input("Display SA Progress across Generations (will override your provided matrix. Uses matrices of size 15 cities & 3000 max_iterations)?")
        if generate_graph == "y":
            files = []
            file_prefix = Path("matrices")
            for i in range(10):
                graph_file = file_prefix / f"15_random_adj_mat_{i}.txt"
                if graph_file.exists():
                    files.append(graph_file)
            medians = []
            for file in files:
                MAT = np.loadtxt(file)
                print(f'Loaded road cost matrix {file.name}')
                MTSP = MyTSP(MAT)
                to_display, _ = simulated_annealing_search(MTSP, alpha=0.98, initial_temperature=1000, max_iterations=3000, display=True)
                medians.append(to_display)
            medians_array = np.array(medians)
            median_per_iteration = np.median(medians_array, axis=0)
            plt.plot(list(range(3000)), median_per_iteration, label="Median Score per Iteration")
            plt.legend(loc='upper right')
            plt.xlabel('# of iterations passed', fontsize=10)
            plt.ylabel('Median Best solution found across all 15 Cities Score', fontsize=10)
            plt.tick_params(axis='y', labelsize=8)
            plt.tick_params(axis='x', labelsize=8)
            plt.grid(True, alpha=0.3)
            plt.title("# of Iterations Passed vs. Median Best Solution Score across all 15 Cities found at that iteration", fontsize=20)
            plt.tight_layout()
            plt.savefig('../graphs/SAIterations.png', dpi=300, bbox_inches='tight')
        else:
            print('Running simulated annealing...')
            t0 = time.time_ns()
            t0_cpu = time.process_time_ns()
            alpha = float(input("Provide (float) alpha hyperparameter: "))
            initial_temperature= int(input("Provide initial_temperature hyperparameter: "))
            max_iterations= int(input("Provide max_iterations hyperparameter: "))
            simulated_annealing = simulated_annealing_search(MTSP, alpha=alpha, initial_temperature=initial_temperature, max_iterations=max_iterations)
            print('CPU time %f seconds'%((time.process_time_ns()-t0_cpu) / 1e9))
            print('Wall time %f seconds'%((time.time_ns()-t0) / 1e9))
            simulated_annealing_path = simulated_annealing.state
            print('Solution Path: ' + str(simulated_annealing_path))
            simulated_annealing_cost = simulated_annealing.path_cost
            print('Solution Cost: ' + str(simulated_annealing_cost))
    elif search_algorithm == "GA":
        generate_graph = input("Display GA Progress across Generations (will override your provided matrix. Uses matrices of size 15 cities & 500 num_generations)?")
        if generate_graph == "y":
            files = []
            file_prefix = Path("matrices")
            for i in range(10):
                graph_file = file_prefix / f"15_random_adj_mat_{i}.txt"
                if graph_file.exists():
                    files.append(graph_file)
            medians = []
            for file in files:
                MAT = np.loadtxt(file)
                print(f'Loaded road cost matrix {file.name}')
                MTSP = MyTSP(MAT)
                to_display, _ = genetic_algorithm_search(MTSP, mutation_chance=0.1, population_size =100, num_generations=500, display=True)
                medians.append(to_display)
            medians_array = np.array(medians)
            median_per_iteration = np.median(medians_array, axis=0)
            plt.plot(list(range(500)), median_per_iteration, label="Median Score per Generation")
            plt.legend(loc='upper right')
            plt.xlabel('# of generations passed', fontsize=10)
            plt.ylabel('Median Best solution found across all 15 Cities Score', fontsize=10)
            plt.tick_params(axis='y', labelsize=8)
            plt.tick_params(axis='x', labelsize=8)
            plt.grid(True, alpha=0.3)
            plt.title("# of Generations Passed vs. Median Best Solution Score across all 15 Cities found at that generation", fontsize=20)
            plt.tight_layout()
            plt.savefig('../graphs/GAGenerations.png', dpi=300, bbox_inches='tight')
        else:
            print('Running genetic algorithm...')
            t0 = time.time_ns()
            t0_cpu = time.process_time_ns()
            mutation_chance = float(input("Provide (float) mutation_chance hyperparameter: "))
            population_size= int(input("Provide population_size hyperparameter: "))
            num_generations= int(input("Provide num_generations hyperparameter: "))
            genetic_algorithm = genetic_algorithm_search(MTSP, mutation_chance=mutation_chance, population_size=population_size, num_generations=num_generations)
            print('CPU time %f seconds'%((time.process_time_ns()-t0_cpu) / 1e9))
            print('Wall time %f seconds'%((time.time_ns()-t0) / 1e9))
            genetic_algorithm_path = genetic_algorithm.state
            print('Solution Path: ' + str(genetic_algorithm_path))
            genetic_algorithm_cost = genetic_algorithm.path_cost
            print('Solution Cost: ' + str(genetic_algorithm_cost))
