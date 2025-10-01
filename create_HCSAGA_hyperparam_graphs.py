import matplotlib.pyplot as plt
import sys
import numpy as np
from collections import defaultdict

results_file = sys.argv[1]
with open(results_file, "r") as f:
    # Going to display box plots
    # Store raw data: results[alg_id][city_size][hyperparam] = [list of 10 costs]
    results = defaultdict(lambda: defaultdict(lambda: defaultdict(list)))
    i = 0
    j = 0
    alg_id = 0
    city_size_map = {0: 5, 1: 10, 2: 15, 3: 20, 4: 25, 5: 30}

    for line in f:
        if line.startswith("Solution Cost: "):
            result = float(line.split()[2])
            hyperparam_idx = i // 60
            city_size_idx = (i % 60) // 10
            
            if alg_id == 0:
                hyperparam_val = {0: 50, 1: 100, 2: 500}[hyperparam_idx]
            elif alg_id == 1:
                hyperparam_val = {0: 0.95, 1: 0.975, 2: 0.995}[hyperparam_idx]
            elif alg_id == 2:
                hyperparam_val = {0: 67, 1: 133, 2: 200}[hyperparam_idx]
            
            city_size = city_size_map[city_size_idx]
            
            results[alg_id][city_size][hyperparam_val].append(result)
            
            i += 1
            j += 1
            
        if j == 180:
            alg_id = 1
            i = 0
        elif j == 360:
            alg_id = 2
            i = 0

    alg_names = {0: 'Hill Climbing', 1: 'Simulated Annealing', 2: 'Genetic Algorithm'}

    for alg_id in sorted(results.keys()):
        plt.figure(figsize=(12, 7))
        
        city_sizes = sorted(results[alg_id].keys())
        hyperparams = sorted(results[alg_id][city_sizes[0]].keys())
        
        num_city_sizes = len(city_sizes)
        group_width = 0.8
        box_width = group_width / num_city_sizes
        
        colors = plt.cm.tab10(np.linspace(0, 1, num_city_sizes))
        
        for city_idx, city_size in enumerate(city_sizes):
            data_for_city = [results[alg_id][city_size][hp] for hp in hyperparams]
            
            positions = [i + city_idx * box_width - group_width/2 + box_width/2 
                        for i in range(len(hyperparams))]
            
            bp = plt.boxplot(data_for_city, positions=positions, widths=box_width*0.9,
                           patch_artist=True, 
                           boxprops=dict(facecolor=colors[city_idx]),
                           medianprops=dict(color='black', linewidth=1.5),
                           showfliers=True)
            
            bp['boxes'][0].set_label(f'City Size {city_size}')
        
        plt.xticks(range(len(hyperparams)), hyperparams)
        plt.legend(loc='upper right')
        plt.ylabel('Solution Cost', fontsize=15)
        plt.tick_params(axis='y', labelsize=14)
        plt.tick_params(axis='x', labelsize=14)
        plt.grid(True, alpha=0.3)
        plt.title(f'{alg_names.get(alg_id, f"Algorithm {alg_id}")}', fontsize=20)
        plt.tight_layout()
        
        if alg_id == 0:
            plt.xlabel('num_repeats Hyperparameter Value', fontsize=15)
            plt.savefig('HC_algorithm_hyperparameter_analysis.png', dpi=300, bbox_inches='tight')
        elif alg_id == 1:
            plt.xlabel('alpha Hyperparameter Value', fontsize=15)
            plt.savefig('SA_algorithm_hyperparameter_analysis.png', dpi=300, bbox_inches='tight')
        elif alg_id == 2:
            plt.xlabel('population_size Hyperparameter Value', fontsize=15)
            plt.savefig('GA_algorithm_hyperparameter_analysis.png', dpi=300, bbox_inches='tight')
        
        plt.close()