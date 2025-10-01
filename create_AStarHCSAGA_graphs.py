import matplotlib.pyplot as plt
import sys
import numpy as np

results_file = sys.argv[1]
with open(results_file, "r") as f:
    #Every 4 i's is a new algorithm, every 120 i's is a new number of cities
    every_algorithm_x = [5, 6, 7, 8, 9, 10, 15]
    HC_CPU_y = []
    HC_Wall_y = []
    HC_Solution_y = []
    SA_CPU_y = []
    SA_Wall_y = []
    SA_Solution_y = []
    GA_CPU_y = []
    GA_Wall_y = []
    GA_Solution_y = []
    AStar_CPU_y = []
    AStar_Wall_y = []
    AStar_Solution_y = []
    i = 0
    j = 0
    HC_CPU = []
    HC_Wall = []
    HC_Solution = []
    SA_CPU = []
    SA_Wall = []
    SA_Solution = []
    GA_CPU = []
    GA_Wall = []
    GA_Solution = []
    AStar_CPU = []
    AStar_Wall = []
    AStar_Solution = []
    for line in f:
        line = line.strip()
        if line.startswith("Generate best hyperparameters"):
            continue
        elif "CPU time " in line:
            result = float(line[line.find("CPU time"):].split()[2])
            alg = (i//3) % 4
            if alg == 0:
                AStar_CPU.append(result)
            elif alg == 1:
                HC_CPU.append(result)
            elif alg == 2:
                SA_CPU.append(result)
            elif alg == 3:
                GA_CPU.append(result)
            i += 1
            j += 1
        elif "Wall time " in line:
            result = float(line[line.find("Wall time"):].split()[2])
            alg = (i//3) % 4
            if alg == 0:
                AStar_Wall.append(result)
            elif alg == 1:
                HC_Wall.append(result)
            elif alg == 2:
                SA_Wall.append(result)
            elif alg == 3:
                GA_Wall.append(result)
            i += 1
            j += 1
        elif "Solution Cost: " in line:
            result = float(line[line.find("Solution Cost:"):].split()[2])
            alg = (i//3) % 4
            if alg == 0:
                AStar_Solution.append(result)
            elif alg == 1:
                HC_Solution.append(result)
            elif alg == 2:
                SA_Solution.append(result)
            elif alg == 3:
                GA_Solution.append(result)
            i += 1
            j += 1
        if j == 120:
            HC_CPU_y.append(np.median(HC_CPU))
            HC_CPU = []
            HC_Wall_y.append(np.median(HC_Wall))
            HC_Wall = []
            HC_Solution_y.append(np.median(HC_Solution))
            HC_Solution = []
            SA_CPU_y.append(np.median(SA_CPU))
            SA_CPU = []
            SA_Wall_y.append(np.median(SA_Wall))
            SA_Wall = []
            SA_Solution_y.append(np.median(SA_Solution))
            SA_Solution = []
            GA_CPU_y.append(np.median(GA_CPU))
            GA_CPU = []
            GA_Wall_y.append(np.median(GA_Wall))
            GA_Wall = []
            GA_Solution_y.append(np.median(GA_Solution))
            GA_Solution = []
            AStar_CPU_y.append(np.median(AStar_CPU))
            AStar_CPU = []
            AStar_Wall_y.append(np.median(AStar_Wall))
            AStar_Wall = []
            AStar_Solution_y.append(np.median(AStar_Solution))
            AStar_Solution = []
            j = 0

    print(f"HC_CPU points collected: {len(HC_CPU_y)}")
    print(f"SA_CPU points collected: {len(SA_CPU_y)}")
    print(f"GA_CPU data points collected: {len(GA_CPU_y)}")
    print(f"AStar_CPU data points collected: {len(AStar_CPU_y)}")

    print(f"HC_Wall points collected: {len(HC_Wall_y)}")
    print(f"SA_Wall points collected: {len(SA_Wall_y)}")
    print(f"GA_Wall data points collected: {len(GA_Wall_y)}")
    print(f"AStar_Wall data points collected: {len(AStar_Wall_y)}")

    print(f"HC_Score points collected: {len(HC_Solution_y)}")
    print(f"SA_Score points collected: {len(SA_Solution_y)}")
    print(f"GA_Score data points collected: {len(GA_Solution_y)}")
    print(f"AStar_Score data points collected: {len(AStar_Solution_y)}")

    print(HC_CPU_y)
    print(AStar_CPU_y)

    fig, axs = plt.subplots(3, 1, figsize=(30, 50))
    axs[0].plot(every_algorithm_x, np.array(HC_CPU_y) / np.array(AStar_CPU_y), color="blue", label="HC / AStar")
    axs[0].plot(every_algorithm_x, np.array(SA_CPU_y) / np.array(AStar_CPU_y), color="green", label="SA / AStar")
    axs[0].plot(every_algorithm_x, np.array(GA_CPU_y) / np.array(AStar_CPU_y), color="red", label="GA / AStar")
    axs[0].set_title("HCSAGA algorithms' median CPU Runtime divided by AStar median CPU Runtime by City Size", fontsize=20)
    axs[0].legend()
    axs[0].set_xticks([5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    axs[0].set_xlabel("Number of Cities", fontsize=15)
    axs[0].set_ylabel("Median HCSAGA Algs CPU Runtime / Median AStar CPU Runtime", fontsize=15)
    axs[0].tick_params(axis='y', labelsize=14)
    axs[0].tick_params(axis='x', labelsize=14)
    axs[0].grid(True)

    axs[1].plot(every_algorithm_x, np.array(HC_Wall_y) / np.array(AStar_Wall_y), color="blue", label="HC / AStar")
    axs[1].plot(every_algorithm_x, np.array(SA_Wall_y) / np.array(AStar_Wall_y), color="green", label="SA / AStar")
    axs[1].plot(every_algorithm_x, np.array(GA_Wall_y) / np.array(AStar_Wall_y), color="red", label="GA / AStar")
    axs[1].set_title("HCSAGA algorithms' median Wall Runtime divided by AStar median Wall Runtime by City Size", fontsize=20)
    axs[1].legend()
    axs[1].set_xticks([5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    axs[1].set_xlabel("Number of Cities", fontsize=15)
    axs[1].set_ylabel("Median HCSAGA Algs Wall Runtime / Median AStar Wall Runtime", fontsize=15)
    axs[1].tick_params(axis='y', labelsize=14)
    axs[1].tick_params(axis='x', labelsize=14)
    axs[1].grid(True)

    axs[2].plot(every_algorithm_x, np.array(HC_Solution_y) / np.array(AStar_Solution_y), color="blue", label="HC / AStar")
    axs[2].plot(every_algorithm_x, np.array(SA_Solution_y) / np.array(AStar_Solution_y), color="green", label="SA / AStar")
    axs[2].plot(every_algorithm_x, np.array(GA_Solution_y) / np.array(AStar_Solution_y), color="red", label="GA / AStar")
    axs[2].set_title("HCSAGA algorithms' median Score divided by AStar median Score by City Size", fontsize=20)
    axs[2].legend()
    axs[2].set_xticks([5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    axs[2].set_xlabel("Number of Cities", fontsize=15)
    axs[2].set_ylabel("Median HCSAGA Algs Score / Median AStar Score", fontsize=15)
    axs[2].tick_params(axis='y', labelsize=14)
    axs[2].tick_params(axis='x', labelsize=14)
    axs[2].grid(True)

    plt.tight_layout()
    plt.savefig('HCSAGA_algorithms_comparison_to_A*.png', dpi=300, bbox_inches='tight')