import matplotlib.pyplot as plt
import sys
import numpy as np

results_file = sys.argv[1]
with open(results_file, "r") as f:
    #Every 3 i's is a new algorithm
    #Every 90 i's is a new number of cities
    every_algorithm_x = [5, 10, 15, 20, 25, 30]
    NN_CPU_y = []
    NN_Wall_y = []
    NN_Solution_y = []
    NN_2Opt_CPU_y = []
    NN_2Opt_Wall_y = []
    NN_2Opt_Solution_y = []
    RRNN_CPU_y = []
    RRNN_Wall_y = []
    RRNN_Solution_y = []
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
    for line in f:
        line = line.strip()
        if line.startswith("Generate best hyperparameters"):
            continue
        if line.startswith("CPU time "):
            result = float(line.split()[2])
            alg = (i//3) % 3
            if alg == 0:
                NN_CPU.append(result)
            elif alg == 1:
                NN_2Opt_CPU.append(result)
            elif alg == 2:
                RRNN_CPU.append(result)
            i += 1
            j += 1
        elif line.startswith("Wall time "):
            result = float(line.split()[2])
            alg = (i//3) % 3
            if alg == 0:
                NN_Wall.append(result)
            elif alg == 1:
                NN_2Opt_Wall.append(result)
            elif alg == 2:
                RRNN_Wall.append(result)
            i += 1
            j += 1
        elif line.startswith("Solution Cost: "):
            result = float(line.split()[2])
            alg = (i//3) % 3
            if alg == 0:
                NN_Solution.append(result)
            elif alg == 1:
                NN_2Opt_Solution.append(result)
            elif alg == 2:
                RRNN_Solution.append(result)
            i += 1
            j += 1
        if j == 90:
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
            j = 0

    print(f"NN_CPU points collected: {len(NN_CPU_y)}")
    print(f"NN_2Opt_CPU points collected: {len(NN_2Opt_CPU_y)}")
    print(f"RRNN_CPU data points collected: {len(RRNN_CPU_y)}")

    print(f"NN_Wall points collected: {len(NN_Wall_y)}")
    print(f"NN_2Opt_Wall points collected: {len(NN_2Opt_Wall_y)}")
    print(f"RRNN_Wall data points collected: {len(RRNN_Wall_y)}")

    print(f"NN_Score points collected: {len(NN_Solution_y)}")
    print(f"NN_2Opt_Score points collected: {len(NN_2Opt_Solution_y)}")
    print(f"RRNN_Score data points collected: {len(RRNN_Solution_y)}")

    fig, axs = plt.subplots(3, 1, figsize=(20, 10))
    axs[0].plot(every_algorithm_x, NN_CPU_y, color="blue", label="NN")
    axs[0].plot(every_algorithm_x, NN_2Opt_CPU_y, color="green", label="NN + 2-Opt")
    axs[0].plot(every_algorithm_x, RRNN_CPU_y, color="red", label="RRNN")
    axs[0].set_title("Nearest Neighbor-Related algorithms' median CPU Runtime by City Size")
    axs[0].legend()
    axs[0].set_xticks(every_algorithm_x)
    axs[0].set_xlabel("Number of Cities")
    axs[0].set_ylabel("Median CPU Runtime")
    axs[0].grid(True)

    axs[1].plot(every_algorithm_x, NN_Wall_y, color="blue", label="NN")
    axs[1].plot(every_algorithm_x, NN_2Opt_Wall_y, color="green", label="NN + 2-Opt")
    axs[1].plot(every_algorithm_x, RRNN_Wall_y, color="red", label="RRNN")
    axs[1].set_title("Nearest Neighbor-Related algorithms' median Wall Runtime by City Size")
    axs[1].legend()
    axs[1].set_xticks(every_algorithm_x)
    axs[1].set_xlabel("Number of Cities")
    axs[1].set_ylabel("Median Wall Runtime")
    axs[1].grid(True)

    axs[2].plot(every_algorithm_x, NN_Solution_y, color="blue", label="NN")
    axs[2].plot(every_algorithm_x, NN_2Opt_Solution_y, color="green", label="NN + 2-Opt")
    axs[2].plot(every_algorithm_x, RRNN_Solution_y, color="red", label="RRNN")
    axs[2].set_title("Nearest Neighbor-Related algorithms' Median Score by City Size")
    axs[2].legend()
    axs[2].set_xticks(every_algorithm_x)
    axs[2].set_xlabel("Number of Cities")
    axs[2].set_ylabel("Median Score")
    axs[2].grid(True)

    plt.tight_layout()
    plt.savefig('nearest_neighbor_algorithms\'_comparison.png', dpi=300, bbox_inches='tight')
