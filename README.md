The video that goes along with the submission is in the video.mp4 files.

# Usage

### aima_my_tsp.py

aima_my_tsp.py is the driver function.
Running: python aima_my_tsp.py <algorithm> <adj_mat>
After running, for RRNN, it will prompt you whether or not you want to generate the comparisons of hyperparameters and their effects on the algorithm (RRNN uses all city sizes). For HC, SA, and GA, it will prompt you whether or not you want to generate the comparisons of num_repeats, max_iterations, and num_generations hyperparameters and their effects on the algorithms (this uses matrices of city size 15). Outputs will appear in RRNN_hyperparameter_analysis.png, HCRepeats.png, SAIterations.png, and GAGenerations.png.
If you want to see this, press 'y' exactly. If not, press anything else.

### .sh scripts

.sh scripts visualize:
comparing A* to HC, SA, and GA algorithms with ./compareAStarWithHCSAGA.sh -- outputted in HCSAGA\_algorithms\_comparison\_to\_A*.png

comparing A* with NN algorithms with ./compareAStarWithNN.sh -- outputed in HCNN\_algorithms'\_comparison\_to\_A*.png

comparing HC, SA, and GA algorithm hyperparameters with ./compareHCSAGAHyperParams.sh -- outputted in HC\_algorithm\_hyperparameter\_analysis.png, SA\_algorithm\_hyperparameter\_analysis.png, and GA\_algorithm\_hyperparameter\_analysis.png

comparing NN-related algorithm hyperparameters with ./compareNN.sh -- outputted in nearest\_neighbor\_algorithms'\_comparison.png

# Credits

Credits to AIMA for providing the A* baseline implementation, as well as the Larrañaga et al. for the alternating-position crossover in 4.3.11. https://cig.fi.upm.es/wp-content/uploads/2024/01/Genetic-algorithms-for-the-travelling-salesman-problem-A-review-of-representations-and-operators.pdf
