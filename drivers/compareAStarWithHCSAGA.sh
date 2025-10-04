#!/bin/bash

exec > results_used_in_graphs/compareAStarWithHCSAGAResults.txt 2>&1
python -m drivers.aima_my_tsp A* 5_random_adj_mat_0.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 5_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 5_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 5_random_adj_mat_0.txt
python -m drivers.aima_my_tsp A* 5_random_adj_mat_1.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 5_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 5_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 5_random_adj_mat_1.txt
python -m drivers.aima_my_tsp A* 5_random_adj_mat_2.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 5_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 5_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 5_random_adj_mat_2.txt
python -m drivers.aima_my_tsp A* 5_random_adj_mat_3.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 5_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 5_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 5_random_adj_mat_3.txt
python -m drivers.aima_my_tsp A* 5_random_adj_mat_4.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 5_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 5_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 5_random_adj_mat_4.txt
python -m drivers.aima_my_tsp A* 5_random_adj_mat_5.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 5_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 5_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 5_random_adj_mat_5.txt
python -m drivers.aima_my_tsp A* 5_random_adj_mat_6.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 5_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 5_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 5_random_adj_mat_6.txt
python -m drivers.aima_my_tsp A* 5_random_adj_mat_7.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 5_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 5_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 5_random_adj_mat_7.txt
python -m drivers.aima_my_tsp A* 5_random_adj_mat_8.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 5_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 5_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 5_random_adj_mat_8.txt
python -m drivers.aima_my_tsp A* 5_random_adj_mat_9.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 5_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 5_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 5_random_adj_mat_9.txt
python -m drivers.aima_my_tsp A* 6_random_adj_mat_0.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 6_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 6_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 6_random_adj_mat_0.txt
python -m drivers.aima_my_tsp A* 6_random_adj_mat_1.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 6_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 6_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 6_random_adj_mat_1.txt
python -m drivers.aima_my_tsp A* 6_random_adj_mat_2.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 6_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 6_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 6_random_adj_mat_2.txt
python -m drivers.aima_my_tsp A* 6_random_adj_mat_3.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 6_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 6_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 6_random_adj_mat_3.txt
python -m drivers.aima_my_tsp A* 6_random_adj_mat_4.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 6_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 6_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 6_random_adj_mat_4.txt
python -m drivers.aima_my_tsp A* 6_random_adj_mat_5.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 6_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 6_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 6_random_adj_mat_5.txt
python -m drivers.aima_my_tsp A* 6_random_adj_mat_6.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 6_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 6_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 6_random_adj_mat_6.txt
python -m drivers.aima_my_tsp A* 6_random_adj_mat_7.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 6_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 6_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 6_random_adj_mat_7.txt
python -m drivers.aima_my_tsp A* 6_random_adj_mat_8.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 6_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 6_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 6_random_adj_mat_8.txt
python -m drivers.aima_my_tsp A* 6_random_adj_mat_9.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 6_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 6_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 6_random_adj_mat_9.txt
python -m drivers.aima_my_tsp A* 7_random_adj_mat_0.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 7_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 7_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 7_random_adj_mat_0.txt
python -m drivers.aima_my_tsp A* 7_random_adj_mat_1.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 7_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 7_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 7_random_adj_mat_1.txt
python -m drivers.aima_my_tsp A* 7_random_adj_mat_2.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 7_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 7_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 7_random_adj_mat_2.txt
python -m drivers.aima_my_tsp A* 7_random_adj_mat_3.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 7_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 7_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 7_random_adj_mat_3.txt
python -m drivers.aima_my_tsp A* 7_random_adj_mat_4.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 7_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 7_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 7_random_adj_mat_4.txt
python -m drivers.aima_my_tsp A* 7_random_adj_mat_5.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 7_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 7_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 7_random_adj_mat_5.txt
python -m drivers.aima_my_tsp A* 7_random_adj_mat_6.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 7_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 7_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 7_random_adj_mat_6.txt
python -m drivers.aima_my_tsp A* 7_random_adj_mat_7.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 7_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 7_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 7_random_adj_mat_7.txt
python -m drivers.aima_my_tsp A* 7_random_adj_mat_8.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 7_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 7_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 7_random_adj_mat_8.txt
python -m drivers.aima_my_tsp A* 7_random_adj_mat_9.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 7_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 7_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 7_random_adj_mat_9.txt
python -m drivers.aima_my_tsp A* 8_random_adj_mat_0.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 8_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 8_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 8_random_adj_mat_0.txt
python -m drivers.aima_my_tsp A* 8_random_adj_mat_1.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 8_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 8_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 8_random_adj_mat_1.txt
python -m drivers.aima_my_tsp A* 8_random_adj_mat_2.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 8_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 8_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 8_random_adj_mat_2.txt
python -m drivers.aima_my_tsp A* 8_random_adj_mat_3.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 8_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 8_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 8_random_adj_mat_3.txt
python -m drivers.aima_my_tsp A* 8_random_adj_mat_4.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 8_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 8_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 8_random_adj_mat_4.txt
python -m drivers.aima_my_tsp A* 8_random_adj_mat_5.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 8_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 8_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 8_random_adj_mat_5.txt
python -m drivers.aima_my_tsp A* 8_random_adj_mat_6.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 8_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 8_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 8_random_adj_mat_6.txt
python -m drivers.aima_my_tsp A* 8_random_adj_mat_7.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 8_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 8_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 8_random_adj_mat_7.txt
python -m drivers.aima_my_tsp A* 8_random_adj_mat_8.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 8_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 8_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 8_random_adj_mat_8.txt
python -m drivers.aima_my_tsp A* 8_random_adj_mat_9.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 8_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 8_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 8_random_adj_mat_9.txt
python -m drivers.aima_my_tsp A* 9_random_adj_mat_0.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 9_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 9_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 9_random_adj_mat_0.txt
python -m drivers.aima_my_tsp A* 9_random_adj_mat_1.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 9_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 9_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 9_random_adj_mat_1.txt
python -m drivers.aima_my_tsp A* 9_random_adj_mat_2.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 9_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 9_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 9_random_adj_mat_2.txt
python -m drivers.aima_my_tsp A* 9_random_adj_mat_3.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 9_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 9_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 9_random_adj_mat_3.txt
python -m drivers.aima_my_tsp A* 9_random_adj_mat_4.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 9_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 9_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 9_random_adj_mat_4.txt
python -m drivers.aima_my_tsp A* 9_random_adj_mat_5.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 9_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 9_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 9_random_adj_mat_5.txt
python -m drivers.aima_my_tsp A* 9_random_adj_mat_6.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 9_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 9_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 9_random_adj_mat_6.txt
python -m drivers.aima_my_tsp A* 9_random_adj_mat_7.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 9_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 9_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 9_random_adj_mat_7.txt
python -m drivers.aima_my_tsp A* 9_random_adj_mat_8.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 9_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 9_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 9_random_adj_mat_8.txt
python -m drivers.aima_my_tsp A* 9_random_adj_mat_9.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 9_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 9_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 9_random_adj_mat_9.txt
python -m drivers.aima_my_tsp A* 10_random_adj_mat_0.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 10_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 10_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 10_random_adj_mat_0.txt
python -m drivers.aima_my_tsp A* 10_random_adj_mat_1.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 10_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 10_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 10_random_adj_mat_1.txt
python -m drivers.aima_my_tsp A* 10_random_adj_mat_2.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 10_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 10_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 10_random_adj_mat_2.txt
python -m drivers.aima_my_tsp A* 10_random_adj_mat_3.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 10_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 10_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 10_random_adj_mat_3.txt
python -m drivers.aima_my_tsp A* 10_random_adj_mat_4.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 10_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 10_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 10_random_adj_mat_4.txt
python -m drivers.aima_my_tsp A* 10_random_adj_mat_5.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 10_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 10_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 10_random_adj_mat_5.txt
python -m drivers.aima_my_tsp A* 10_random_adj_mat_6.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 10_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 10_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 10_random_adj_mat_6.txt
python -m drivers.aima_my_tsp A* 10_random_adj_mat_7.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 10_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 10_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 10_random_adj_mat_7.txt
python -m drivers.aima_my_tsp A* 10_random_adj_mat_8.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 10_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 10_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 10_random_adj_mat_8.txt
python -m drivers.aima_my_tsp A* 10_random_adj_mat_9.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 10_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 10_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 10_random_adj_mat_9.txt
python -m drivers.aima_my_tsp A* 15_random_adj_mat_0.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 15_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 15_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 15_random_adj_mat_0.txt
python -m drivers.aima_my_tsp A* 15_random_adj_mat_1.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 15_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 15_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 15_random_adj_mat_1.txt
python -m drivers.aima_my_tsp A* 15_random_adj_mat_2.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 15_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 15_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 15_random_adj_mat_2.txt
python -m drivers.aima_my_tsp A* 15_random_adj_mat_3.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 15_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 15_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 15_random_adj_mat_3.txt
python -m drivers.aima_my_tsp A* 15_random_adj_mat_4.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 15_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 15_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 15_random_adj_mat_4.txt
python -m drivers.aima_my_tsp A* 15_random_adj_mat_5.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 15_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 15_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 15_random_adj_mat_5.txt
python -m drivers.aima_my_tsp A* 15_random_adj_mat_6.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 15_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 15_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 15_random_adj_mat_6.txt
python -m drivers.aima_my_tsp A* 15_random_adj_mat_7.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 15_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 15_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 15_random_adj_mat_7.txt
python -m drivers.aima_my_tsp A* 15_random_adj_mat_8.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 15_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 15_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 15_random_adj_mat_8.txt
python -m drivers.aima_my_tsp A* 15_random_adj_mat_9.txt
printf "n\n 500\n\n" | python -m drivers.aima_my_tsp HC 15_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python -m drivers.aima_my_tsp SA 15_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python -m drivers.aima_my_tsp GA 15_random_adj_mat_9.txt
python -m helper_scripts.create_AStarHCSAGA_graphs results_used_in_graphs/compareAStarWithHCSAGAResults.txt