# MethylLipariSzabo

This code calculates methyl side-chain correlation functions for each of the trajectory given and determines fit parameters.

Code works as follows,

(i) the interested trajectory should be divided into 16 chunks each containing 10 ns-long data with 2 fs time-step. For each of the chunks a seperate directory should be created. At the first chunk a pdb file of interested structure should be present,

(ii) order_param_main.m should be placed in the first directory and directory names,trajectory name and corresponding pdb file name should be changed accordingly in this script.

(iii) pdbIndex.m and corr_func.m functions should be placed in a different folder and this folder should be added to MATLAB path for future use.

(iv) after necessary changes had been made and functions are added to path, order_param_main.m should be run on the editor.

(v) when the calculations are done, the code will be producing a figure and a corresponding .dat file for each side-chain in the protein. these data should be collected into an array with the data_collection.m script. This script must be placed in the first directory where the first chunk is placed. After the processing, this code will be creating a new 'average' folder for analysis run placing the array inside of it.

(vi) analysis.m script should be placed on 'average' folder and should be run on the editor. This code will be creating average correlation functions of 16 chunks and determines fit parameters for each of the side chain. Figures will be automatically created, fit paramaters will be saved as a seperate file named : 'End_Parameters'.
