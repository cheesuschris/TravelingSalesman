import matplotlib.pyplot as plt
import sys
import numpy as np

results_file = sys.argv[1]
with open(results_file, "r") as f:
    #Every 4 i's is a new algorithm
    #Every 120 i's is a new number of cities
    every_algorithm_x = [5, 6, 7, 8, 9, 10, 15]
    NN_CPU_y = []
    NN_Wall_y = []
    NN_Solution_y = []
    NN_2Opt_CPU_y = []
    NN_2Opt_Wall_y = []
    NN_2Opt_Solution_y = []
    RRNN_CPU_y = []
    RRNN_Wall_y = []
    RRNN_Solution_y = []
    AStar_CPU_y = []
    AStar_Wall_y = []
    AStar_Solution_y = []
    AStar_Nodes_Expanded_y = []
    i = 0
    j = 0
    NN_CPU = []
    NN_Wall = []
    NN_Solution = []
    NN_2Opt_CPU = []
    NN_2Opt_Wall = []
    NN_2Opt_Solution = []
    RRNN_CPU = []
    RRNN_Wall = []
    RRNN_Solution = []
    AStar_CPU = []
    AStar_Wall = []
    AStar_Solution = []
    AStar_Nodes_Expanded = []
    for line in f:
        line = line.strip()
        if line.startswith("Generate best hyperparameters"):
            continue
        elif line.startswith("CPU time "):
            result = float(line.split()[2])
            alg = (i//3) % 4
            if alg == 0:
                AStar_CPU.append(result)
            elif alg == 1:
                NN_CPU.append(result)
            elif alg == 2:
                NN_2Opt_CPU.append(result)
            elif alg == 3:
                RRNN_CPU.append(result)
            i += 1
            j += 1
        elif line.startswith("Wall time "):
            result = float(line.split()[2])
            alg = (i//3) % 4
            if alg == 0:
                AStar_Wall.append(result)
            elif alg == 1:
                NN_Wall.append(result)
            elif alg == 2:
                NN_2Opt_Wall.append(result)
            elif alg == 3:
                RRNN_Wall.append(result)
            i += 1
            j += 1
        elif line.startswith("Solution Cost: "):
            result = float(line.split()[2])
            alg = (i//3) % 4
            if alg == 0:
                AStar_Solution.append(result)
            elif alg == 1:
                NN_Solution.append(result)
            elif alg == 2:
                NN_2Opt_Solution.append(result)
            elif alg == 3:
                RRNN_Solution.append(result)
            i += 1
            j += 1
        elif ''.join(line.split()[1:]).startswith("pathshavebeenexpandedand"):
            result = int(line.split()[0])  
            AStar_Nodes_Expanded.append(result)
        if j == 120:
            NN_CPU_y.append(np.median(NN_CPU))
            NN_CPU = []
            NN_Wall_y.append(np.median(NN_Wall))
            NN_Wall = []
            NN_Solution_y.append(np.median(NN_Solution))
            NN_Solution = []
            NN_2Opt_CPU_y.append(np.median(NN_2Opt_CPU))
            NN_2Opt_CPU = []
            NN_2Opt_Wall_y.append(np.median(NN_2Opt_Wall))
            NN_2Opt_Wall = []
            NN_2Opt_Solution_y.append(np.median(NN_2Opt_Solution))
            NN_2Opt_Solution = []
            RRNN_CPU_y.append(np.median(RRNN_CPU))
            RRNN_CPU = []
            RRNN_Wall_y.append(np.median(RRNN_Wall))
            RRNN_Wall = []
            RRNN_Solution_y.append(np.median(RRNN_Solution))
            RRNN_Solution = []
            AStar_CPU_y.append(np.median(AStar_CPU))
            AStar_CPU = []
            AStar_Wall_y.append(np.median(AStar_Wall))
            AStar_Wall = []
            AStar_Solution_y.append(np.median(AStar_Solution))
            AStar_Solution = []
            AStar_Nodes_Expanded_y.append(np.median(AStar_Nodes_Expanded))
            AStar_Nodes_Expanded = []
            j = 0

    print(f"NN_CPU points collected: {len(NN_CPU_y)}")
    print(f"NN_2Opt_CPU points collected: {len(NN_2Opt_CPU_y)}")
    print(f"RRNN_CPU data points collected: {len(RRNN_CPU_y)}")
    print(f"AStar_CPU data points collected: {len(AStar_CPU_y)}")

    print(f"NN_Wall points collected: {len(NN_Wall_y)}")
    print(f"NN_2Opt_Wall points collected: {len(NN_2Opt_Wall_y)}")
    print(f"RRNN_Wall data points collected: {len(RRNN_Wall_y)}")
    print(f"AStar_Wall data points collected: {len(AStar_Wall_y)}")

    print(f"NN_Score points collected: {len(NN_Solution_y)}")
    print(f"NN_2Opt_Score points collected: {len(NN_2Opt_Solution_y)}")
    print(f"RRNN_Score data points collected: {len(RRNN_Solution_y)}")
    print(f"AStar_Score data points collected: {len(AStar_Solution_y)}")
    print(f"AStar_Nodes_Expanded data points collected: {len(AStar_Nodes_Expanded_y)}")

    fig, axs = plt.subplots(4, 1, figsize=(30, 50))
    axs[0].plot(every_algorithm_x, np.array(NN_CPU_y) / np.array(AStar_CPU_y), color="blue", label="NN / AStar")
    axs[0].plot(every_algorithm_x, np.array(NN_2Opt_CPU_y) / np.array(AStar_CPU_y), color="green", label="NN + 2-Opt / AStar")
    axs[0].plot(every_algorithm_x, np.array(RRNN_CPU_y) / np.array(AStar_CPU_y), color="red", label="RRNN / AStar")
    axs[0].set_title("Nearest Neighbor-Related algorithms' median CPU Runtime divided by AStar median CPU Runtime, as well as AStar Nodes Expanded by City Size", fontsize=20)
    axs[0].legend()
    axs[0].set_xticks([5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    axs[0].set_xlabel("Number of Cities", fontsize=15)
    axs[0].set_ylabel("Median NN-Related Algs CPU Runtime / Median AStar CPU Runtime", fontsize=15)
    axs[0].tick_params(axis='y', labelsize=14)
    axs[0].tick_params(axis='x', labelsize=14)
    axs[0].grid(True)

    axs[1].plot(every_algorithm_x, np.array(NN_Wall_y) / np.array(AStar_Wall_y), color="blue", label="NN / AStar")
    axs[1].plot(every_algorithm_x, np.array(NN_2Opt_Wall_y) / np.array(AStar_Wall_y), color="green", label="NN + 2-Opt / AStar")
    axs[1].plot(every_algorithm_x, np.array(RRNN_Wall_y) / np.array(AStar_Wall_y), color="red", label="RRNN / AStar")
    axs[1].set_title("Nearest Neighbor-Related algorithms' median Wall Runtime divided by AStar median Wall Runtime, as well as AStar Nodes Expanded by City Size", fontsize=20)
    axs[1].legend()
    axs[1].set_xticks([5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    axs[1].set_xlabel("Number of Cities", fontsize=15)
    axs[1].set_ylabel("Median NN-Related Algs Wall Runtime / Median AStar Wall Runtime", fontsize=15)
    axs[1].tick_params(axis='y', labelsize=14)
    axs[1].tick_params(axis='x', labelsize=14)
    axs[1].grid(True)

    axs[2].plot(every_algorithm_x, np.array(NN_Solution_y) / np.array(AStar_Solution_y), color="blue", label="NN / AStar")
    axs[2].plot(every_algorithm_x, np.array(NN_2Opt_Solution_y) / np.array(AStar_Solution_y), color="green", label="NN + 2-Opt / AStar")
    axs[2].plot(every_algorithm_x, np.array(RRNN_Solution_y) / np.array(AStar_Solution_y), color="red", label="RRNN / AStar")
    axs[2].set_title("Nearest Neighbor-Related algorithms' median Score divided by AStar median Score by City Size", fontsize=20)
    axs[2].legend()
    axs[2].set_xticks([5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    axs[2].set_xlabel("Number of Cities", fontsize=15)
    axs[2].set_ylabel("Median NN-Related Algs Score / Median AStar Score", fontsize=15)
    axs[2].tick_params(axis='y', labelsize=14)
    axs[2].tick_params(axis='x', labelsize=14)
    axs[2].grid(True)

    axs[3].plot(every_algorithm_x, AStar_Nodes_Expanded_y, color="blue", label="# Nodes A* Expanded")
    axs[3].set_title("Number of Nodes A* Expanded", fontsize=20)
    axs[3].legend()
    axs[3].set_xticks([5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    axs[3].set_xlabel("Number of Cities", fontsize=15)
    axs[3].set_ylabel("# Nodes A* Expanded", fontsize=15)
    axs[3].tick_params(axis='y', labelsize=14)
    axs[3].tick_params(axis='x', labelsize=14)
    axs[3].grid(True)

    plt.tight_layout()
    plt.savefig('NN_algorithms\'_comparison_to_A*.png', dpi=300, bbox_inches='tight')
