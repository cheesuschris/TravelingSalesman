#!/bin/bash

exec > compareAStarWithHCSAGAResults.txt 2>&1
python aima_my_tsp.py A* 5_random_adj_mat_0.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 5_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 5_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 5_random_adj_mat_0.txt
python aima_my_tsp.py A* 5_random_adj_mat_1.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 5_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 5_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 5_random_adj_mat_1.txt
python aima_my_tsp.py A* 5_random_adj_mat_2.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 5_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 5_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 5_random_adj_mat_2.txt
python aima_my_tsp.py A* 5_random_adj_mat_3.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 5_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 5_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 5_random_adj_mat_3.txt
python aima_my_tsp.py A* 5_random_adj_mat_4.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 5_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 5_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 5_random_adj_mat_4.txt
python aima_my_tsp.py A* 5_random_adj_mat_5.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 5_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 5_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 5_random_adj_mat_5.txt
python aima_my_tsp.py A* 5_random_adj_mat_6.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 5_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 5_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 5_random_adj_mat_6.txt
python aima_my_tsp.py A* 5_random_adj_mat_7.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 5_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 5_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 5_random_adj_mat_7.txt
python aima_my_tsp.py A* 5_random_adj_mat_8.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 5_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 5_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 5_random_adj_mat_8.txt
python aima_my_tsp.py A* 5_random_adj_mat_9.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 5_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 5_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 5_random_adj_mat_9.txt
python aima_my_tsp.py A* 6_random_adj_mat_0.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 6_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 6_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 6_random_adj_mat_0.txt
python aima_my_tsp.py A* 6_random_adj_mat_1.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 6_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 6_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 6_random_adj_mat_1.txt
python aima_my_tsp.py A* 6_random_adj_mat_2.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 6_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 6_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 6_random_adj_mat_2.txt
python aima_my_tsp.py A* 6_random_adj_mat_3.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 6_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 6_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 6_random_adj_mat_3.txt
python aima_my_tsp.py A* 6_random_adj_mat_4.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 6_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 6_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 6_random_adj_mat_4.txt
python aima_my_tsp.py A* 6_random_adj_mat_5.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 6_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 6_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 6_random_adj_mat_5.txt
python aima_my_tsp.py A* 6_random_adj_mat_6.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 6_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 6_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 6_random_adj_mat_6.txt
python aima_my_tsp.py A* 6_random_adj_mat_7.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 6_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 6_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 6_random_adj_mat_7.txt
python aima_my_tsp.py A* 6_random_adj_mat_8.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 6_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 6_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 6_random_adj_mat_8.txt
python aima_my_tsp.py A* 6_random_adj_mat_9.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 6_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 6_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 6_random_adj_mat_9.txt
python aima_my_tsp.py A* 7_random_adj_mat_0.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 7_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 7_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 7_random_adj_mat_0.txt
python aima_my_tsp.py A* 7_random_adj_mat_1.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 7_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 7_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 7_random_adj_mat_1.txt
python aima_my_tsp.py A* 7_random_adj_mat_2.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 7_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 7_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 7_random_adj_mat_2.txt
python aima_my_tsp.py A* 7_random_adj_mat_3.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 7_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 7_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 7_random_adj_mat_3.txt
python aima_my_tsp.py A* 7_random_adj_mat_4.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 7_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 7_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 7_random_adj_mat_4.txt
python aima_my_tsp.py A* 7_random_adj_mat_5.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 7_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 7_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 7_random_adj_mat_5.txt
python aima_my_tsp.py A* 7_random_adj_mat_6.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 7_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 7_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 7_random_adj_mat_6.txt
python aima_my_tsp.py A* 7_random_adj_mat_7.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 7_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 7_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 7_random_adj_mat_7.txt
python aima_my_tsp.py A* 7_random_adj_mat_8.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 7_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 7_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 7_random_adj_mat_8.txt
python aima_my_tsp.py A* 7_random_adj_mat_9.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 7_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 7_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 7_random_adj_mat_9.txt
python aima_my_tsp.py A* 8_random_adj_mat_0.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 8_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 8_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 8_random_adj_mat_0.txt
python aima_my_tsp.py A* 8_random_adj_mat_1.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 8_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 8_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 8_random_adj_mat_1.txt
python aima_my_tsp.py A* 8_random_adj_mat_2.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 8_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 8_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 8_random_adj_mat_2.txt
python aima_my_tsp.py A* 8_random_adj_mat_3.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 8_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 8_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 8_random_adj_mat_3.txt
python aima_my_tsp.py A* 8_random_adj_mat_4.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 8_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 8_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 8_random_adj_mat_4.txt
python aima_my_tsp.py A* 8_random_adj_mat_5.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 8_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 8_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 8_random_adj_mat_5.txt
python aima_my_tsp.py A* 8_random_adj_mat_6.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 8_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 8_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 8_random_adj_mat_6.txt
python aima_my_tsp.py A* 8_random_adj_mat_7.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 8_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 8_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 8_random_adj_mat_7.txt
python aima_my_tsp.py A* 8_random_adj_mat_8.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 8_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 8_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 8_random_adj_mat_8.txt
python aima_my_tsp.py A* 8_random_adj_mat_9.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 8_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 8_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 8_random_adj_mat_9.txt
python aima_my_tsp.py A* 9_random_adj_mat_0.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 9_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 9_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 9_random_adj_mat_0.txt
python aima_my_tsp.py A* 9_random_adj_mat_1.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 9_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 9_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 9_random_adj_mat_1.txt
python aima_my_tsp.py A* 9_random_adj_mat_2.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 9_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 9_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 9_random_adj_mat_2.txt
python aima_my_tsp.py A* 9_random_adj_mat_3.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 9_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 9_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 9_random_adj_mat_3.txt
python aima_my_tsp.py A* 9_random_adj_mat_4.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 9_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 9_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 9_random_adj_mat_4.txt
python aima_my_tsp.py A* 9_random_adj_mat_5.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 9_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 9_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 9_random_adj_mat_5.txt
python aima_my_tsp.py A* 9_random_adj_mat_6.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 9_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 9_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 9_random_adj_mat_6.txt
python aima_my_tsp.py A* 9_random_adj_mat_7.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 9_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 9_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 9_random_adj_mat_7.txt
python aima_my_tsp.py A* 9_random_adj_mat_8.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 9_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 9_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 9_random_adj_mat_8.txt
python aima_my_tsp.py A* 9_random_adj_mat_9.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 9_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 9_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 9_random_adj_mat_9.txt
python aima_my_tsp.py A* 10_random_adj_mat_0.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 10_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 10_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 10_random_adj_mat_0.txt
python aima_my_tsp.py A* 10_random_adj_mat_1.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 10_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 10_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 10_random_adj_mat_1.txt
python aima_my_tsp.py A* 10_random_adj_mat_2.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 10_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 10_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 10_random_adj_mat_2.txt
python aima_my_tsp.py A* 10_random_adj_mat_3.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 10_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 10_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 10_random_adj_mat_3.txt
python aima_my_tsp.py A* 10_random_adj_mat_4.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 10_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 10_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 10_random_adj_mat_4.txt
python aima_my_tsp.py A* 10_random_adj_mat_5.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 10_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 10_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 10_random_adj_mat_5.txt
python aima_my_tsp.py A* 10_random_adj_mat_6.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 10_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 10_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 10_random_adj_mat_6.txt
python aima_my_tsp.py A* 10_random_adj_mat_7.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 10_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 10_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 10_random_adj_mat_7.txt
python aima_my_tsp.py A* 10_random_adj_mat_8.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 10_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 10_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 10_random_adj_mat_8.txt
python aima_my_tsp.py A* 10_random_adj_mat_9.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 10_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 10_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 10_random_adj_mat_9.txt
python aima_my_tsp.py A* 15_random_adj_mat_0.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 15_random_adj_mat_0.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 15_random_adj_mat_0.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 15_random_adj_mat_0.txt
python aima_my_tsp.py A* 15_random_adj_mat_1.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 15_random_adj_mat_1.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 15_random_adj_mat_1.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 15_random_adj_mat_1.txt
python aima_my_tsp.py A* 15_random_adj_mat_2.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 15_random_adj_mat_2.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 15_random_adj_mat_2.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 15_random_adj_mat_2.txt
python aima_my_tsp.py A* 15_random_adj_mat_3.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 15_random_adj_mat_3.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 15_random_adj_mat_3.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 15_random_adj_mat_3.txt
python aima_my_tsp.py A* 15_random_adj_mat_4.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 15_random_adj_mat_4.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 15_random_adj_mat_4.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 15_random_adj_mat_4.txt
python aima_my_tsp.py A* 15_random_adj_mat_5.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 15_random_adj_mat_5.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 15_random_adj_mat_5.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 15_random_adj_mat_5.txt
python aima_my_tsp.py A* 15_random_adj_mat_6.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 15_random_adj_mat_6.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 15_random_adj_mat_6.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 15_random_adj_mat_6.txt
python aima_my_tsp.py A* 15_random_adj_mat_7.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 15_random_adj_mat_7.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 15_random_adj_mat_7.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 15_random_adj_mat_7.txt
python aima_my_tsp.py A* 15_random_adj_mat_8.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 15_random_adj_mat_8.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 15_random_adj_mat_8.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 15_random_adj_mat_8.txt
python aima_my_tsp.py A* 15_random_adj_mat_9.txt
printf "n\n 500\n\n" | python aima_my_tsp.py HC 15_random_adj_mat_9.txt
printf "n\n0.98\n1000\n10000\n\n" | python aima_my_tsp.py SA 15_random_adj_mat_9.txt
printf "n\n0.1\n100\n500\n\n" | python aima_my_tsp.py GA 15_random_adj_mat_9.txt
python create_AStarHCSAGA_graphs.py compareAStarWithHCSAGAResults.txt