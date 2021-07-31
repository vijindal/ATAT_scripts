readEnergyData.sh: This script reads energy data from the cluster expansion folder created by ATAT and stores it into a text file.

readVolData.sh: This script reads volume data from the cluster expansion folder created by ATAT and stores it into a text file.

gen_struct_mod.sh: This script automates the process of cluster expansion. Script uses energy data stored in the energyData.txt file for cluster expansion. 

writeEnergyData.py: This script reads the output text file of the readEnergyData.sh script and writes it into a specified excel file. Excel file should have the first column prefilled with structure IDs. The script then matches the structure Id and writes energy in the corresponding row. The column number can be specified.

