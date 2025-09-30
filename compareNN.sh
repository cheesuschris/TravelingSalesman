#!/bin/bash

exec > compareNNResults.txt 2>&1
python aima_my_tsp.py NN 5_random_adj_mat_0.txt
python aima_my_tsp.py NN2Opt 5_random_adj_mat_0.txt
printf "n\n" | python aima_my_tsp.py RRNN 5_random_adj_mat_0.txt
python aima_my_tsp.py NN 5_random_adj_mat_1.txt
python aima_my_tsp.py NN2Opt 5_random_adj_mat_1.txt
printf "n\n" | python aima_my_tsp.py RRNN 5_random_adj_mat_1.txt
python aima_my_tsp.py NN 5_random_adj_mat_2.txt
python aima_my_tsp.py NN2Opt 5_random_adj_mat_2.txt
printf "n\n" | python aima_my_tsp.py RRNN 5_random_adj_mat_2.txt
python aima_my_tsp.py NN 5_random_adj_mat_3.txt
python aima_my_tsp.py NN2Opt 5_random_adj_mat_3.txt
printf "n\n" | python aima_my_tsp.py RRNN 5_random_adj_mat_3.txt
python aima_my_tsp.py NN 5_random_adj_mat_4.txt
python aima_my_tsp.py NN2Opt 5_random_adj_mat_4.txt
printf "n\n" | python aima_my_tsp.py RRNN 5_random_adj_mat_4.txt
python aima_my_tsp.py NN 5_random_adj_mat_5.txt
python aima_my_tsp.py NN2Opt 5_random_adj_mat_5.txt
printf "n\n" | python aima_my_tsp.py RRNN 5_random_adj_mat_5.txt
python aima_my_tsp.py NN 5_random_adj_mat_6.txt
python aima_my_tsp.py NN2Opt 5_random_adj_mat_6.txt
printf "n\n" | python aima_my_tsp.py RRNN 5_random_adj_mat_6.txt
python aima_my_tsp.py NN 5_random_adj_mat_7.txt
python aima_my_tsp.py NN2Opt 5_random_adj_mat_7.txt
printf "n\n" | python aima_my_tsp.py RRNN 5_random_adj_mat_7.txt
python aima_my_tsp.py NN 5_random_adj_mat_8.txt
python aima_my_tsp.py NN2Opt 5_random_adj_mat_8.txt
printf "n\n" | python aima_my_tsp.py RRNN 5_random_adj_mat_8.txt
python aima_my_tsp.py NN 5_random_adj_mat_9.txt
python aima_my_tsp.py NN2Opt 5_random_adj_mat_9.txt
printf "n\n" | python aima_my_tsp.py RRNN 5_random_adj_mat_9.txt
python aima_my_tsp.py NN 10_random_adj_mat_0.txt
python aima_my_tsp.py NN2Opt 10_random_adj_mat_0.txt
printf "n\n" | python aima_my_tsp.py RRNN 10_random_adj_mat_0.txt
python aima_my_tsp.py NN 10_random_adj_mat_1.txt
python aima_my_tsp.py NN2Opt 10_random_adj_mat_1.txt
printf "n\n" | python aima_my_tsp.py RRNN 10_random_adj_mat_1.txt
python aima_my_tsp.py NN 10_random_adj_mat_2.txt
python aima_my_tsp.py NN2Opt 10_random_adj_mat_2.txt
printf "n\n" | python aima_my_tsp.py RRNN 10_random_adj_mat_2.txt
python aima_my_tsp.py NN 10_random_adj_mat_3.txt
python aima_my_tsp.py NN2Opt 10_random_adj_mat_3.txt
printf "n\n" | python aima_my_tsp.py RRNN 10_random_adj_mat_3.txt
python aima_my_tsp.py NN 10_random_adj_mat_4.txt
python aima_my_tsp.py NN2Opt 10_random_adj_mat_4.txt
printf "n\n" | python aima_my_tsp.py RRNN 10_random_adj_mat_4.txt
python aima_my_tsp.py NN 10_random_adj_mat_5.txt
python aima_my_tsp.py NN2Opt 10_random_adj_mat_5.txt
printf "n\n" | python aima_my_tsp.py RRNN 10_random_adj_mat_5.txt
python aima_my_tsp.py NN 10_random_adj_mat_6.txt
python aima_my_tsp.py NN2Opt 10_random_adj_mat_6.txt
printf "n\n" | python aima_my_tsp.py RRNN 10_random_adj_mat_6.txt
python aima_my_tsp.py NN 10_random_adj_mat_7.txt
python aima_my_tsp.py NN2Opt 10_random_adj_mat_7.txt
printf "n\n" | python aima_my_tsp.py RRNN 10_random_adj_mat_7.txt
python aima_my_tsp.py NN 10_random_adj_mat_8.txt
python aima_my_tsp.py NN2Opt 10_random_adj_mat_8.txt
printf "n\n" | python aima_my_tsp.py RRNN 10_random_adj_mat_8.txt
python aima_my_tsp.py NN 10_random_adj_mat_9.txt
python aima_my_tsp.py NN2Opt 10_random_adj_mat_9.txt
printf "n\n" | python aima_my_tsp.py RRNN 10_random_adj_mat_9.txt
python aima_my_tsp.py NN 15_random_adj_mat_0.txt
python aima_my_tsp.py NN2Opt 15_random_adj_mat_0.txt
printf "n\n" | python aima_my_tsp.py RRNN 15_random_adj_mat_0.txt
python aima_my_tsp.py NN 15_random_adj_mat_1.txt
python aima_my_tsp.py NN2Opt 15_random_adj_mat_1.txt
printf "n\n" | python aima_my_tsp.py RRNN 15_random_adj_mat_1.txt
python aima_my_tsp.py NN 15_random_adj_mat_2.txt
python aima_my_tsp.py NN2Opt 15_random_adj_mat_2.txt
printf "n\n" | python aima_my_tsp.py RRNN 15_random_adj_mat_2.txt
python aima_my_tsp.py NN 15_random_adj_mat_3.txt
python aima_my_tsp.py NN2Opt 15_random_adj_mat_3.txt
printf "n\n" | python aima_my_tsp.py RRNN 15_random_adj_mat_3.txt
python aima_my_tsp.py NN 15_random_adj_mat_4.txt
python aima_my_tsp.py NN2Opt 15_random_adj_mat_4.txt
printf "n\n" | python aima_my_tsp.py RRNN 15_random_adj_mat_4.txt
python aima_my_tsp.py NN 15_random_adj_mat_5.txt
python aima_my_tsp.py NN2Opt 15_random_adj_mat_5.txt
printf "n\n" | python aima_my_tsp.py RRNN 15_random_adj_mat_5.txt
python aima_my_tsp.py NN 15_random_adj_mat_6.txt
python aima_my_tsp.py NN2Opt 15_random_adj_mat_6.txt
printf "n\n" | python aima_my_tsp.py RRNN 15_random_adj_mat_6.txt
python aima_my_tsp.py NN 15_random_adj_mat_7.txt
python aima_my_tsp.py NN2Opt 15_random_adj_mat_7.txt
printf "n\n" | python aima_my_tsp.py RRNN 15_random_adj_mat_7.txt
python aima_my_tsp.py NN 15_random_adj_mat_8.txt
python aima_my_tsp.py NN2Opt 15_random_adj_mat_8.txt
printf "n\n" | python aima_my_tsp.py RRNN 15_random_adj_mat_8.txt
python aima_my_tsp.py NN 15_random_adj_mat_9.txt
python aima_my_tsp.py NN2Opt 15_random_adj_mat_9.txt
printf "n\n" | python aima_my_tsp.py RRNN 15_random_adj_mat_9.txt
python aima_my_tsp.py NN 20_random_adj_mat_0.txt
python aima_my_tsp.py NN2Opt 20_random_adj_mat_0.txt
printf "n\n" | python aima_my_tsp.py RRNN 20_random_adj_mat_0.txt
python aima_my_tsp.py NN 20_random_adj_mat_1.txt
python aima_my_tsp.py NN2Opt 20_random_adj_mat_1.txt
printf "n\n" | python aima_my_tsp.py RRNN 20_random_adj_mat_1.txt
python aima_my_tsp.py NN 20_random_adj_mat_2.txt
python aima_my_tsp.py NN2Opt 20_random_adj_mat_2.txt
printf "n\n" | python aima_my_tsp.py RRNN 20_random_adj_mat_2.txt
python aima_my_tsp.py NN 20_random_adj_mat_3.txt
python aima_my_tsp.py NN2Opt 20_random_adj_mat_3.txt
printf "n\n" | python aima_my_tsp.py RRNN 20_random_adj_mat_3.txt
python aima_my_tsp.py NN 20_random_adj_mat_4.txt
python aima_my_tsp.py NN2Opt 20_random_adj_mat_4.txt
printf "n\n" | python aima_my_tsp.py RRNN 20_random_adj_mat_4.txt
python aima_my_tsp.py NN 20_random_adj_mat_5.txt
python aima_my_tsp.py NN2Opt 20_random_adj_mat_5.txt
printf "n\n" | python aima_my_tsp.py RRNN 20_random_adj_mat_5.txt
python aima_my_tsp.py NN 20_random_adj_mat_6.txt
python aima_my_tsp.py NN2Opt 20_random_adj_mat_6.txt
printf "n\n" | python aima_my_tsp.py RRNN 20_random_adj_mat_6.txt
python aima_my_tsp.py NN 20_random_adj_mat_7.txt
python aima_my_tsp.py NN2Opt 20_random_adj_mat_7.txt
printf "n\n" | python aima_my_tsp.py RRNN 20_random_adj_mat_7.txt
python aima_my_tsp.py NN 20_random_adj_mat_8.txt
python aima_my_tsp.py NN2Opt 20_random_adj_mat_8.txt
printf "n\n" | python aima_my_tsp.py RRNN 20_random_adj_mat_8.txt
python aima_my_tsp.py NN 20_random_adj_mat_9.txt
python aima_my_tsp.py NN2Opt 20_random_adj_mat_9.txt
printf "n\n" | python aima_my_tsp.py RRNN 20_random_adj_mat_9.txt
python aima_my_tsp.py NN 25_random_adj_mat_0.txt
python aima_my_tsp.py NN2Opt 25_random_adj_mat_0.txt
printf "n\n" | python aima_my_tsp.py RRNN 25_random_adj_mat_0.txt
python aima_my_tsp.py NN 25_random_adj_mat_1.txt
python aima_my_tsp.py NN2Opt 25_random_adj_mat_1.txt
printf "n\n" | python aima_my_tsp.py RRNN 25_random_adj_mat_1.txt
python aima_my_tsp.py NN 25_random_adj_mat_2.txt
python aima_my_tsp.py NN2Opt 25_random_adj_mat_2.txt
printf "n\n" | python aima_my_tsp.py RRNN 25_random_adj_mat_2.txt
python aima_my_tsp.py NN 25_random_adj_mat_3.txt
python aima_my_tsp.py NN2Opt 25_random_adj_mat_3.txt
printf "n\n" | python aima_my_tsp.py RRNN 25_random_adj_mat_3.txt
python aima_my_tsp.py NN 25_random_adj_mat_4.txt
python aima_my_tsp.py NN2Opt 25_random_adj_mat_4.txt
printf "n\n" | python aima_my_tsp.py RRNN 25_random_adj_mat_4.txt
python aima_my_tsp.py NN 25_random_adj_mat_5.txt
python aima_my_tsp.py NN2Opt 25_random_adj_mat_5.txt
printf "n\n" | python aima_my_tsp.py RRNN 25_random_adj_mat_5.txt
python aima_my_tsp.py NN 25_random_adj_mat_6.txt
python aima_my_tsp.py NN2Opt 25_random_adj_mat_6.txt
printf "n\n" | python aima_my_tsp.py RRNN 25_random_adj_mat_6.txt
python aima_my_tsp.py NN 25_random_adj_mat_7.txt
python aima_my_tsp.py NN2Opt 25_random_adj_mat_7.txt
printf "n\n" | python aima_my_tsp.py RRNN 25_random_adj_mat_7.txt
python aima_my_tsp.py NN 25_random_adj_mat_8.txt
python aima_my_tsp.py NN2Opt 25_random_adj_mat_8.txt
printf "n\n" | python aima_my_tsp.py RRNN 25_random_adj_mat_8.txt
python aima_my_tsp.py NN 25_random_adj_mat_9.txt
python aima_my_tsp.py NN2Opt 25_random_adj_mat_9.txt
printf "n\n" | python aima_my_tsp.py RRNN 25_random_adj_mat_9.txt
python aima_my_tsp.py NN 30_random_adj_mat_0.txt
python aima_my_tsp.py NN2Opt 30_random_adj_mat_0.txt
printf "n\n" | python aima_my_tsp.py RRNN 30_random_adj_mat_0.txt
python aima_my_tsp.py NN 30_random_adj_mat_1.txt
python aima_my_tsp.py NN2Opt 30_random_adj_mat_1.txt
printf "n\n" | python aima_my_tsp.py RRNN 30_random_adj_mat_1.txt
python aima_my_tsp.py NN 30_random_adj_mat_2.txt
python aima_my_tsp.py NN2Opt 30_random_adj_mat_2.txt
printf "n\n" | python aima_my_tsp.py RRNN 30_random_adj_mat_2.txt
python aima_my_tsp.py NN 30_random_adj_mat_3.txt
python aima_my_tsp.py NN2Opt 30_random_adj_mat_3.txt
printf "n\n" | python aima_my_tsp.py RRNN 30_random_adj_mat_3.txt
python aima_my_tsp.py NN 30_random_adj_mat_4.txt
python aima_my_tsp.py NN2Opt 30_random_adj_mat_4.txt
printf "n\n" | python aima_my_tsp.py RRNN 30_random_adj_mat_4.txt
python aima_my_tsp.py NN 30_random_adj_mat_5.txt
python aima_my_tsp.py NN2Opt 30_random_adj_mat_5.txt
printf "n\n" | python aima_my_tsp.py RRNN 30_random_adj_mat_5.txt
python aima_my_tsp.py NN 30_random_adj_mat_6.txt
python aima_my_tsp.py NN2Opt 30_random_adj_mat_6.txt
printf "n\n" | python aima_my_tsp.py RRNN 30_random_adj_mat_6.txt
python aima_my_tsp.py NN 30_random_adj_mat_7.txt
python aima_my_tsp.py NN2Opt 30_random_adj_mat_7.txt
printf "n\n" | python aima_my_tsp.py RRNN 30_random_adj_mat_7.txt
python aima_my_tsp.py NN 30_random_adj_mat_8.txt
python aima_my_tsp.py NN2Opt 30_random_adj_mat_8.txt
printf "n\n" | python aima_my_tsp.py RRNN 30_random_adj_mat_8.txt
python aima_my_tsp.py NN 30_random_adj_mat_9.txt
python aima_my_tsp.py NN2Opt 30_random_adj_mat_9.txt
printf "n\n" | python aima_my_tsp.py RRNN 30_random_adj_mat_9.txt
python create_NN_graphs.py compareNNResults.txt