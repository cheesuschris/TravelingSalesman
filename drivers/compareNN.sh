#!/bin/bash

exec > results_used_in_graphs/compareNNResults.txt 2>&1
python -m drivers.aima_my_tsp NN 5_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN2Opt 5_random_adj_mat_0.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 5_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN 5_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN2Opt 5_random_adj_mat_1.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 5_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN 5_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN2Opt 5_random_adj_mat_2.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 5_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN 5_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN2Opt 5_random_adj_mat_3.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 5_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN 5_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN2Opt 5_random_adj_mat_4.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 5_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN 5_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN2Opt 5_random_adj_mat_5.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 5_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN 5_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN2Opt 5_random_adj_mat_6.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 5_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN 5_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN2Opt 5_random_adj_mat_7.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 5_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN 5_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN2Opt 5_random_adj_mat_8.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 5_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN 5_random_adj_mat_9.txt
python -m drivers.aima_my_tsp NN2Opt 5_random_adj_mat_9.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 5_random_adj_mat_9.txt
python -m drivers.aima_my_tsp NN 10_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN2Opt 10_random_adj_mat_0.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 10_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN 10_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN2Opt 10_random_adj_mat_1.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 10_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN 10_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN2Opt 10_random_adj_mat_2.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 10_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN 10_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN2Opt 10_random_adj_mat_3.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 10_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN 10_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN2Opt 10_random_adj_mat_4.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 10_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN 10_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN2Opt 10_random_adj_mat_5.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 10_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN 10_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN2Opt 10_random_adj_mat_6.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 10_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN 10_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN2Opt 10_random_adj_mat_7.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 10_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN 10_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN2Opt 10_random_adj_mat_8.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 10_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN 10_random_adj_mat_9.txt
python -m drivers.aima_my_tsp NN2Opt 10_random_adj_mat_9.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 10_random_adj_mat_9.txt
python -m drivers.aima_my_tsp NN 15_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN2Opt 15_random_adj_mat_0.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 15_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN 15_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN2Opt 15_random_adj_mat_1.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 15_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN 15_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN2Opt 15_random_adj_mat_2.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 15_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN 15_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN2Opt 15_random_adj_mat_3.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 15_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN 15_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN2Opt 15_random_adj_mat_4.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 15_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN 15_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN2Opt 15_random_adj_mat_5.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 15_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN 15_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN2Opt 15_random_adj_mat_6.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 15_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN 15_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN2Opt 15_random_adj_mat_7.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 15_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN 15_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN2Opt 15_random_adj_mat_8.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 15_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN 15_random_adj_mat_9.txt
python -m drivers.aima_my_tsp NN2Opt 15_random_adj_mat_9.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 15_random_adj_mat_9.txt
python -m drivers.aima_my_tsp NN 20_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN2Opt 20_random_adj_mat_0.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 20_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN 20_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN2Opt 20_random_adj_mat_1.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 20_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN 20_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN2Opt 20_random_adj_mat_2.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 20_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN 20_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN2Opt 20_random_adj_mat_3.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 20_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN 20_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN2Opt 20_random_adj_mat_4.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 20_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN 20_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN2Opt 20_random_adj_mat_5.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 20_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN 20_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN2Opt 20_random_adj_mat_6.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 20_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN 20_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN2Opt 20_random_adj_mat_7.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 20_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN 20_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN2Opt 20_random_adj_mat_8.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 20_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN 20_random_adj_mat_9.txt
python -m drivers.aima_my_tsp NN2Opt 20_random_adj_mat_9.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 20_random_adj_mat_9.txt
python -m drivers.aima_my_tsp NN 25_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN2Opt 25_random_adj_mat_0.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 25_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN 25_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN2Opt 25_random_adj_mat_1.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 25_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN 25_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN2Opt 25_random_adj_mat_2.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 25_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN 25_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN2Opt 25_random_adj_mat_3.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 25_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN 25_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN2Opt 25_random_adj_mat_4.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 25_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN 25_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN2Opt 25_random_adj_mat_5.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 25_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN 25_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN2Opt 25_random_adj_mat_6.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 25_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN 25_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN2Opt 25_random_adj_mat_7.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 25_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN 25_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN2Opt 25_random_adj_mat_8.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 25_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN 25_random_adj_mat_9.txt
python -m drivers.aima_my_tsp NN2Opt 25_random_adj_mat_9.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 25_random_adj_mat_9.txt
python -m drivers.aima_my_tsp NN 30_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN2Opt 30_random_adj_mat_0.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 30_random_adj_mat_0.txt
python -m drivers.aima_my_tsp NN 30_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN2Opt 30_random_adj_mat_1.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 30_random_adj_mat_1.txt
python -m drivers.aima_my_tsp NN 30_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN2Opt 30_random_adj_mat_2.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 30_random_adj_mat_2.txt
python -m drivers.aima_my_tsp NN 30_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN2Opt 30_random_adj_mat_3.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 30_random_adj_mat_3.txt
python -m drivers.aima_my_tsp NN 30_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN2Opt 30_random_adj_mat_4.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 30_random_adj_mat_4.txt
python -m drivers.aima_my_tsp NN 30_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN2Opt 30_random_adj_mat_5.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 30_random_adj_mat_5.txt
python -m drivers.aima_my_tsp NN 30_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN2Opt 30_random_adj_mat_6.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 30_random_adj_mat_6.txt
python -m drivers.aima_my_tsp NN 30_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN2Opt 30_random_adj_mat_7.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 30_random_adj_mat_7.txt
python -m drivers.aima_my_tsp NN 30_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN2Opt 30_random_adj_mat_8.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 30_random_adj_mat_8.txt
python -m drivers.aima_my_tsp NN 30_random_adj_mat_9.txt
python -m drivers.aima_my_tsp NN2Opt 30_random_adj_mat_9.txt
printf "n\n" | python -m drivers.aima_my_tsp RRNN 30_random_adj_mat_9.txt
python -m helper_scripts.create_NN_graphs results_used_in_graphs/compareNNResults.txt