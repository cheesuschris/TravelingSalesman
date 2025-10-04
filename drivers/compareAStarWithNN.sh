#!/bin/bash

exec > ../results_used_in_graphs/compareAStarWithNNResults.txt 2>&1
python ../drivers/aima_my_tsp.py A* 5_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN 5_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN2Opt 5_random_adj_mat_0.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 5_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py A* 5_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN 5_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN2Opt 5_random_adj_mat_1.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 5_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py A* 5_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN 5_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN2Opt 5_random_adj_mat_2.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 5_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py A* 5_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN 5_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN2Opt 5_random_adj_mat_3.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 5_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py A* 5_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN 5_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN2Opt 5_random_adj_mat_4.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 5_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py A* 5_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN 5_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN2Opt 5_random_adj_mat_5.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 5_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py A* 5_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN 5_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN2Opt 5_random_adj_mat_6.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 5_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py A* 5_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN 5_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN2Opt 5_random_adj_mat_7.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 5_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py A* 5_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN 5_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN2Opt 5_random_adj_mat_8.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 5_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py A* 5_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN 5_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN2Opt 5_random_adj_mat_9.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 5_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py A* 6_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN 6_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN2Opt 6_random_adj_mat_0.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 6_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py A* 6_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN 6_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN2Opt 6_random_adj_mat_1.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 6_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py A* 6_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN 6_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN2Opt 6_random_adj_mat_2.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 6_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py A* 6_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN 6_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN2Opt 6_random_adj_mat_3.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 6_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py A* 6_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN 6_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN2Opt 6_random_adj_mat_4.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 6_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py A* 6_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN 6_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN2Opt 6_random_adj_mat_5.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 6_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py A* 6_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN 6_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN2Opt 6_random_adj_mat_6.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 6_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py A* 6_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN 6_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN2Opt 6_random_adj_mat_7.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 6_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py A* 6_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN 6_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN2Opt 6_random_adj_mat_8.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 6_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py A* 6_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN 6_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN2Opt 6_random_adj_mat_9.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 6_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py A* 7_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN 7_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN2Opt 7_random_adj_mat_0.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 7_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py A* 7_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN 7_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN2Opt 7_random_adj_mat_1.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 7_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py A* 7_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN 7_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN2Opt 7_random_adj_mat_2.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 7_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py A* 7_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN 7_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN2Opt 7_random_adj_mat_3.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 7_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py A* 7_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN 7_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN2Opt 7_random_adj_mat_4.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 7_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py A* 7_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN 7_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN2Opt 7_random_adj_mat_5.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 7_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py A* 7_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN 7_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN2Opt 7_random_adj_mat_6.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 7_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py A* 7_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN 7_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN2Opt 7_random_adj_mat_7.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 7_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py A* 7_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN 7_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN2Opt 7_random_adj_mat_8.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 7_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py A* 7_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN 7_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN2Opt 7_random_adj_mat_9.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 7_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py A* 8_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN 8_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN2Opt 8_random_adj_mat_0.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 8_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py A* 8_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN 8_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN2Opt 8_random_adj_mat_1.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 8_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py A* 8_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN 8_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN2Opt 8_random_adj_mat_2.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 8_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py A* 8_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN 8_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN2Opt 8_random_adj_mat_3.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 8_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py A* 8_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN 8_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN2Opt 8_random_adj_mat_4.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 8_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py A* 8_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN 8_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN2Opt 8_random_adj_mat_5.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 8_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py A* 8_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN 8_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN2Opt 8_random_adj_mat_6.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 8_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py A* 8_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN 8_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN2Opt 8_random_adj_mat_7.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 8_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py A* 8_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN 8_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN2Opt 8_random_adj_mat_8.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 8_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py A* 8_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN 8_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN2Opt 8_random_adj_mat_9.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 8_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py A* 9_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN 9_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN2Opt 9_random_adj_mat_0.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 9_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py A* 9_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN 9_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN2Opt 9_random_adj_mat_1.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 9_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py A* 9_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN 9_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN2Opt 9_random_adj_mat_2.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 9_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py A* 9_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN 9_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN2Opt 9_random_adj_mat_3.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 9_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py A* 9_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN 9_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN2Opt 9_random_adj_mat_4.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 9_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py A* 9_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN 9_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN2Opt 9_random_adj_mat_5.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 9_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py A* 9_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN 9_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN2Opt 9_random_adj_mat_6.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 9_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py A* 9_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN 9_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN2Opt 9_random_adj_mat_7.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 9_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py A* 9_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN 9_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN2Opt 9_random_adj_mat_8.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 9_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py A* 9_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN 9_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN2Opt 9_random_adj_mat_9.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 9_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py A* 10_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN 10_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN2Opt 10_random_adj_mat_0.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 10_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py A* 10_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN 10_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN2Opt 10_random_adj_mat_1.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 10_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py A* 10_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN 10_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN2Opt 10_random_adj_mat_2.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 10_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py A* 10_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN 10_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN2Opt 10_random_adj_mat_3.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 10_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py A* 10_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN 10_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN2Opt 10_random_adj_mat_4.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 10_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py A* 10_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN 10_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN2Opt 10_random_adj_mat_5.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 10_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py A* 10_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN 10_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN2Opt 10_random_adj_mat_6.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 10_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py A* 10_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN 10_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN2Opt 10_random_adj_mat_7.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 10_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py A* 10_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN 10_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN2Opt 10_random_adj_mat_8.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 10_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py A* 10_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN 10_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN2Opt 10_random_adj_mat_9.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 10_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py A* 15_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN 15_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py NN2Opt 15_random_adj_mat_0.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 15_random_adj_mat_0.txt
python ../drivers/aima_my_tsp.py A* 15_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN 15_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py NN2Opt 15_random_adj_mat_1.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 15_random_adj_mat_1.txt
python ../drivers/aima_my_tsp.py A* 15_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN 15_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py NN2Opt 15_random_adj_mat_2.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 15_random_adj_mat_2.txt
python ../drivers/aima_my_tsp.py A* 15_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN 15_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py NN2Opt 15_random_adj_mat_3.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 15_random_adj_mat_3.txt
python ../drivers/aima_my_tsp.py A* 15_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN 15_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py NN2Opt 15_random_adj_mat_4.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 15_random_adj_mat_4.txt
python ../drivers/aima_my_tsp.py A* 15_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN 15_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py NN2Opt 15_random_adj_mat_5.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 15_random_adj_mat_5.txt
python ../drivers/aima_my_tsp.py A* 15_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN 15_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py NN2Opt 15_random_adj_mat_6.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 15_random_adj_mat_6.txt
python ../drivers/aima_my_tsp.py A* 15_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN 15_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py NN2Opt 15_random_adj_mat_7.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 15_random_adj_mat_7.txt
python ../drivers/aima_my_tsp.py A* 15_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN 15_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py NN2Opt 15_random_adj_mat_8.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 15_random_adj_mat_8.txt
python ../drivers/aima_my_tsp.py A* 15_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN 15_random_adj_mat_9.txt
python ../drivers/aima_my_tsp.py NN2Opt 15_random_adj_mat_9.txt
printf "n\n" | python ../drivers/aima_my_tsp.py RRNN 15_random_adj_mat_9.txt
python ../helper_scripts/create_AStarNN_graphs.py ../results_used_in_graphs/compareAStarWithNNResults.txt